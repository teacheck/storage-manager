package io.teacheck.storagemanager.database;

import io.teacheck.storagemanager.database.util.SqlQuery;
import io.vertx.codegen.annotations.Fluent;
import io.vertx.codegen.annotations.GenIgnore;
import io.vertx.codegen.annotations.ProxyGen;
import io.vertx.codegen.annotations.VertxGen;
import io.vertx.core.AsyncResult;
import io.vertx.core.Handler;
import io.vertx.core.Vertx;
import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;
import io.vertx.reactivex.ext.jdbc.JDBCClient;

import java.util.HashMap;

@ProxyGen
@VertxGen
public interface StudentDatabaseService {

    @Fluent
    StudentDatabaseService getStudents(Handler<AsyncResult<JsonArray>> resultHandler);

    @Fluent
    StudentDatabaseService getStudent(int studentId, Handler<AsyncResult<JsonObject>> resultHandler);

    @Fluent
    StudentDatabaseService getStudentSubjects(int studentId, Handler<AsyncResult<JsonObject>> resultHandler);

    @Fluent
    StudentDatabaseService getSubjects(int studentId, Handler<AsyncResult<JsonArray>> resultHandler);

    @Fluent
    StudentDatabaseService getStudentSubjectsStatistics(int studentId, Handler<AsyncResult<JsonArray>> resultHandler);

    @GenIgnore
    static StudentDatabaseService create(JDBCClient dbClient, HashMap<SqlQuery, String> sqlQueries, Handler<AsyncResult<StudentDatabaseService>> readyHandler) {
        return new StudentDatabaseServiceImpl(dbClient, sqlQueries, readyHandler);
    }

    @GenIgnore
    static io.teacheck.storagemanager.database.reactivex.StudentDatabaseService createProxy(Vertx vertx,String address) {
        return new io.teacheck.storagemanager.database.reactivex.StudentDatabaseService(new StudentDatabaseServiceVertxEBProxy(vertx, address));
    }
}
