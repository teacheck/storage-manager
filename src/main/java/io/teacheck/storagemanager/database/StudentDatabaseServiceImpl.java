package io.teacheck.storagemanager.database;

import io.reactivex.Flowable;
import io.reactivex.Single;
import io.teacheck.storagemanager.database.util.SqlQuery;
import io.teacheck.storagemanager.database.util.Util;
import io.vertx.core.AsyncResult;
import io.vertx.core.Future;
import io.vertx.core.Handler;
import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;
import io.vertx.core.logging.Logger;
import io.vertx.core.logging.LoggerFactory;
import io.vertx.reactivex.SingleHelper;
import io.vertx.reactivex.ext.jdbc.JDBCClient;

import java.util.HashMap;

public class StudentDatabaseServiceImpl implements StudentDatabaseService {

    private static final Logger LOGGER = LoggerFactory.getLogger(StudentDatabaseServiceImpl.class);

    private HashMap<SqlQuery, String> sqlQueries;
    private JDBCClient dbClient;

    StudentDatabaseServiceImpl(JDBCClient dbClient, HashMap<SqlQuery, String> sqlQueries, Handler<AsyncResult<StudentDatabaseService>> readyHandler) {
        this.dbClient = dbClient;
        this.sqlQueries = sqlQueries;

        dbClient.getConnection(ar -> {
            ar.result().close();
            if (ar.succeeded()) {
                LOGGER.info("Database connection succeeded");
                readyHandler.handle(Future.succeededFuture(this));
            } else {
                LOGGER.error("Couldn't get connection to database", ar.cause());
                readyHandler.handle(Future.failedFuture(ar.cause()));
            }
        });
    }

    @Override
    public StudentDatabaseService getStudents(Handler<AsyncResult<JsonArray>> resultHandler) {
        dbClient.rxQuery(sqlQueries.get(SqlQuery.GET_STUDENTS))
                .flatMapPublisher(resultSet -> Flowable.fromIterable(resultSet.getRows()))
                .collect(JsonArray::new, JsonArray::add)
                .subscribe(SingleHelper.toObserver(resultHandler));

        return this;
    }

    @Override
    public StudentDatabaseService getStudent(int studentId, Handler<AsyncResult<JsonObject>> resultHandler) {
        dbClient.rxQueryWithParams(sqlQueries.get(SqlQuery.GET_STUDENT_BY_ID), new JsonArray().add(studentId))
                .flatMap(resultSet -> Single.just(resultSet.getRows().get(0)))
                .subscribe(SingleHelper.toObserver(resultHandler));

        return this;
    }

    @Override
    public StudentDatabaseService getStudentSubjects(int studentId, Handler<AsyncResult<JsonObject>> resultHandler) {
        dbClient.rxQueryWithParams(sqlQueries.get(SqlQuery.GET_STUDENT_SUBJECTS), new JsonArray().add(studentId))
                .flatMap(resultSet -> Single.just(resultSet.getRows()))
                .map(jsonObjects -> jsonObjects.get(0).put("asignaturas", Util.groupSubjects(jsonObjects)))
                .map(jsonObject -> {
                    jsonObject.remove("nombre_asignatura");
                    return jsonObject;
                })
                .subscribe(SingleHelper.toObserver(resultHandler));

        return this;
    }

    @Override
    public StudentDatabaseService getSubjects(int studentId, Handler<AsyncResult<JsonArray>> resultHandler) {
        dbClient.rxQueryWithParams(sqlQueries.get(SqlQuery.GET_SUBJECTS), new JsonArray().add(studentId))
                .flatMapPublisher(resultSet -> Flowable.fromIterable(resultSet.getRows()))
                .map(jsonObject -> new JsonObject().put("nombre", jsonObject.getString("nombre_asignatura")))
                .collect(JsonArray::new, JsonArray::add)
                .subscribe(SingleHelper.toObserver(resultHandler));

        return this;
    }

    @Override
    public StudentDatabaseService getStudentSubjectsStatistics(int studentId, Handler<AsyncResult<JsonArray>> resultHandler) {
        dbClient.rxQueryWithParams(sqlQueries.get(SqlQuery.GET_STUDENT_SUBJECT_STATISTICS), new JsonArray().add(studentId))
                .flatMapPublisher(resultSet -> Flowable.fromIterable(resultSet.getRows()))
                .collect(JsonArray::new, JsonArray::add)
                .subscribe(SingleHelper.toObserver(resultHandler));

        return this;
    }
}
