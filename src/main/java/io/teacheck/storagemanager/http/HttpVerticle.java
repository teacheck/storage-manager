package io.teacheck.storagemanager.http;

import io.teacheck.storagemanager.database.reactivex.StudentDatabaseService;
import io.vertx.core.Future;
import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;
import io.vertx.core.logging.Logger;
import io.vertx.core.logging.LoggerFactory;
import io.vertx.reactivex.core.AbstractVerticle;
import io.vertx.reactivex.ext.web.Router;
import io.vertx.reactivex.ext.web.RoutingContext;


public class HttpVerticle extends AbstractVerticle {

    private static final Logger LOGGER = LoggerFactory.getLogger(HttpVerticle.class);

    private static final String CONFIG_HTTP_SERVER_PORT = "http_server_port";
    private static final String CONFIG_HTTP_SERVER_HOST = "http_server_host";
    private static final String CONFIG_STUDENT_DB_SERVICE_QUEUE = "student_db_service_queue";

    private StudentDatabaseService studentDatabaseService;
    private Router mainRouter;

    @Override
    public void start(Future<Void> startFuture) {
        String studentDBQueue = config().getString(CONFIG_STUDENT_DB_SERVICE_QUEUE);
        studentDatabaseService = io.teacheck.storagemanager.database.StudentDatabaseService.createProxy(vertx.getDelegate(), studentDBQueue);

        int httpServerPort = config().getInteger(CONFIG_HTTP_SERVER_PORT);

        buildRoutes();
        vertx.createHttpServer()
                .requestHandler(mainRouter)
                .listen(httpServerPort, ready -> {
                    if (ready.succeeded()) {
                        LOGGER.info("Server running on port " + httpServerPort);
                        startFuture.complete();
                    } else {
                        LOGGER.fatal("Couldn't start server", ready.cause());
                        startFuture.fail(ready.cause());
                    }
                });
    }

    public void buildRoutes() {
        mainRouter = Router.router(vertx);
        mainRouter.get("/").handler(ctx -> ctx.response()
                .setStatusCode(200)
                .end("Teacheck storage-manager API."));

        Router apiRouter;
        apiRouter = Router.router(vertx);
        apiRouter.get("/students").handler(this::studentGetAll);
        apiRouter.get("/students/:id").handler(this::studentGetById);
        apiRouter.get("/students/:id/subjects").handler(this::studentGetSubjects);
        apiRouter.get("/students/:id/subjects-only").handler(this::studentGetSubjectsOnly);
        apiRouter.get("/students/:id/subjects-statistics").handler(this::studentGetSubjectsStatistics);

        mainRouter.mountSubRouter("/api", apiRouter);
    }

    private void studentGetSubjectsStatistics(RoutingContext ctx) {
        int studentId = Integer.parseInt(ctx.request().getParam("id"));
        studentDatabaseService.rxGetStudentSubjectsStatistics(studentId)
                .subscribe(jsonObject -> apiResponse(ctx, 200, "asignaturas", jsonObject)
                , t -> apiFailure(ctx, 404, t.getMessage()));
    }

    private void studentGetSubjectsOnly(RoutingContext ctx) {
        int studentId = Integer.parseInt(ctx.request().getParam("id"));
        studentDatabaseService.rxGetSubjects(studentId)
                .subscribe(jsonObject -> apiResponse(ctx, 200, "asignaturas", jsonObject)
                        , t -> apiFailure(ctx, 404, t.getMessage()));
    }

    private void studentGetSubjects(RoutingContext ctx) {
        int studentId = Integer.parseInt(ctx.request().getParam("id"));
        studentDatabaseService.rxGetStudentSubjects(studentId)
                .subscribe(jsonObject -> apiResponse(ctx, 200, "alumno", jsonObject)
                , t -> apiFailure(ctx, 404, t.getMessage()));
    }

    private void studentGetById(RoutingContext ctx) {
        int studentId = Integer.parseInt(ctx.request().getParam("id"));
        studentDatabaseService.rxGetStudent(studentId)
                .subscribe(jsonObject -> apiResponse(ctx, 200, "alumno", jsonObject),
                        t -> apiFailure(ctx, 404, t.getMessage()));

    }

    private void studentGetAll(RoutingContext ctx) {
        studentDatabaseService.rxGetStudents()
                .subscribe(jsonArray -> apiResponse(ctx, 200, "alumnos", jsonArray)
                        , t -> apiFailure(ctx, t));
    }

    private void apiResponse(RoutingContext context, int statusCode, String jsonField, Object jsonData) {
        context.response().setStatusCode(statusCode);
        context.response().putHeader("Content-Type", "application/json");
        JsonObject wrapped = new JsonObject().put("success", true);
        if (jsonField != null && jsonData != null) wrapped.put(jsonField, jsonData);
        context.response().end(wrapped.encode());
    }

    private void apiFailure(RoutingContext context, Throwable t) {
        apiFailure(context, 500, t.getMessage());
    }

    private void apiFailure(RoutingContext context, int statusCode, String error) {
        context.response().setStatusCode(statusCode);
        context.response().putHeader("Content-Type", "application/json");
        context.response().end(new JsonObject()
                .put("success", false)
                .put("error", error).encode());
    }
}
