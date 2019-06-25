package io.teacheck.storagemanager;

import io.reactivex.Single;
import io.teacheck.storagemanager.database.DatabaseMigrationVerticle;
import io.teacheck.storagemanager.database.DatabaseServiceVerticle;
import io.teacheck.storagemanager.http.HttpVerticle;
import io.vertx.config.ConfigRetriever;
import io.vertx.core.DeploymentOptions;
import io.vertx.core.Future;
import io.vertx.core.json.JsonObject;
import io.vertx.core.logging.Logger;
import io.vertx.core.logging.LoggerFactory;
import io.vertx.reactivex.core.AbstractVerticle;

public class MainVerticle extends AbstractVerticle {

    private static final Logger LOGGER = LoggerFactory.getLogger(MainVerticle.class);

    @Override
    public void start(Future<Void> startFuture) {
        ConfigRetriever configRetriever = ConfigRetriever.create(vertx.getDelegate());
        configRetriever.getConfig(config -> {
            if (config.succeeded()) {
                JsonObject systemConfig = config.result();
                JsonObject devConfig = systemConfig.getJsonObject("dev");

                JsonObject databaseMigrationVerticle = devConfig.getJsonObject("database_migration_verticle");
                JsonObject databaseVerticleConfig = devConfig.getJsonObject("database_service_verticle");
                JsonObject httpVerticleConfig = devConfig.getJsonObject("http_verticle");

                Single<String> dbMigrationDeployment = vertx.rxDeployVerticle(new DatabaseMigrationVerticle(),
                        new DeploymentOptions().setConfig(databaseMigrationVerticle));
                Single<String> dbServiceVerticleDeployment = vertx.rxDeployVerticle(new DatabaseServiceVerticle(),
                        new DeploymentOptions().setConfig(databaseVerticleConfig));

                Single.zip(dbMigrationDeployment, dbServiceVerticleDeployment, (s, s2) -> s + "," + s2)
                        .flatMap(ids -> vertx.rxDeployVerticle(new HttpVerticle(),
                                new DeploymentOptions().setConfig(httpVerticleConfig)))
                        .subscribe(id -> startFuture.complete(), startFuture::fail);
            }
        });
    }
}
