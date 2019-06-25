package io.teacheck.storagemanager.database;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.Future;
import io.vertx.core.logging.Logger;
import io.vertx.core.logging.LoggerFactory;
import org.flywaydb.core.Flyway;

public class DatabaseMigrationVerticle extends AbstractVerticle {

    private static final Logger LOGGER = LoggerFactory.getLogger(DatabaseMigrationVerticle.class);

    private static final String CONFIG_JDBC_DATABASE_URL = "jdbc_database_url";
    private static final String CONFIG_USERNAME = "postgres_username";
    private static final String CONFIG_PASSWORD = "postgres_password";

    @Override
    public void start(Future<Void> startFuture) {
        vertx.executeBlocking(future -> {
            Flyway flyway = Flyway.configure()
                    .dataSource(config().getString(CONFIG_JDBC_DATABASE_URL),
                            config().getString(CONFIG_USERNAME),
                            config().getString(CONFIG_PASSWORD))
                    .load();
            future.complete(flyway.migrate());
        }, ar -> {
            if (ar.succeeded()) {
                LOGGER.info("Migrations applied successfully");
                startFuture.complete();
            } else {
                LOGGER.error("Couldn't apply migrations", ar.cause());
                startFuture.fail(ar.cause());
            }
        });
    }
}
