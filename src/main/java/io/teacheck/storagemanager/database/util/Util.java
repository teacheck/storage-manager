package io.teacheck.storagemanager.database.util;

import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;

import java.util.List;

public class Util {

    public static JsonArray toJsonArray(List<JsonObject> jsonObjectList) {
        JsonArray array = new JsonArray();
        jsonObjectList.forEach(array::add);
        return array;
    }

    public static JsonArray groupSubjects(List<JsonObject> jsonObjectList) {
        JsonArray subjects = new JsonArray();
        jsonObjectList.forEach(v -> subjects.add(new JsonObject().put("nombre", v.getString("nombre_asignatura"))));
        return subjects;
    }
}
