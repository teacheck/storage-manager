package io.teacheck.storagemanager.database;

import io.teacheck.storagemanager.database.util.SqlQuery;
import io.vertx.core.Future;
import io.vertx.core.json.JsonObject;
import io.vertx.core.logging.Logger;
import io.vertx.core.logging.LoggerFactory;
import io.vertx.reactivex.core.AbstractVerticle;
import io.vertx.reactivex.ext.jdbc.JDBCClient;
import io.vertx.serviceproxy.ServiceBinder;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Properties;

public class DatabaseServiceVerticle extends AbstractVerticle {

    private static final Logger LOGGER = LoggerFactory.getLogger(DatabaseServiceVerticle.class);

    public static final String CONFIG_DB_USERNAME = "db_username";
    public static final String CONFIG_DB_PASSWORD = "db_password";
    public static final String CONFIG_JDBC_DATABASE_URL = "jdbc_database_url";
    public static final String CONFIG_JDBC_DRIVE_CLASS = "jdbc_driver_class";
    public static final String CONFIG_JDBC_MAX_POOL_SIZE = "jdbc_max_pool_size";
    public static final String CONFIG_SQL_QUERIES_RESOURCE_FILE = "sqlqueries_resource_file";
    public static final String CONFIG_QUEUE = "student_db_service_queue";

    @Override
    public void start(Future<Void> startFuture) throws Exception {
        HashMap<SqlQuery, String> studentSqlQueries = loadQueries();

        JDBCClient dbClient = JDBCClient.createShared(vertx, new JsonObject()
        .put("url", config().getString(CONFIG_JDBC_DATABASE_URL))
        .put("driver_class", config().getString(CONFIG_JDBC_DRIVE_CLASS))
        .put("max_pool_size", config().getInteger(CONFIG_JDBC_MAX_POOL_SIZE))
        .put("user", config().getString(CONFIG_DB_USERNAME))
        .put("password", config().getString(CONFIG_DB_PASSWORD)));

        StudentDatabaseService.create(dbClient,studentSqlQueries, ready -> {
            if (ready.succeeded()) {
                ServiceBinder binder = new ServiceBinder(vertx.getDelegate());
                binder
                        .setAddress(config().getString(CONFIG_QUEUE))
                        .register(StudentDatabaseService.class, ready.result());
                LOGGER.info("StudentDatabaseService registered");
                startFuture.complete();
            } else {
                LOGGER.fatal("Failed to register StudentDatabaseService", ready.cause());
                startFuture.fail(ready.cause());
            }
        });
    }

    private HashMap<SqlQuery, String> loadQueries() throws IOException {
        Properties queriesProps = getProps();

        HashMap<SqlQuery, String> sqlQueries = new HashMap<>();
        sqlQueries.put(SqlQuery.GET_STUDENTS, queriesProps.getProperty("get-students"));
        sqlQueries.put(SqlQuery.GET_STUDENT_BY_ID, queriesProps.getProperty("get-student-by-id"));
        sqlQueries.put(SqlQuery.GET_STUDENT_SUBJECTS, queriesProps.getProperty("get-student-subjects"));
        sqlQueries.put(SqlQuery.GET_SUBJECTS, queriesProps.getProperty("get-subjects"));
        sqlQueries.put(SqlQuery.GET_STUDENT_SUBJECT_STATISTICS, queriesProps.getProperty("get-student-subject-statistics"));
        return sqlQueries;
    }

    private Properties getProps() throws IOException {
        String queriesFile = config().getString(CONFIG_SQL_QUERIES_RESOURCE_FILE);
        InputStream inputStream;
        if (queriesFile != null) {
            inputStream = new FileInputStream(queriesFile);
        } else {
            inputStream = getClass().getResourceAsStream("/db-queries.properties");
        }

        Properties queriesProps = new Properties();
        queriesProps.load(inputStream);
        inputStream.close();

        return queriesProps;
    }
}
