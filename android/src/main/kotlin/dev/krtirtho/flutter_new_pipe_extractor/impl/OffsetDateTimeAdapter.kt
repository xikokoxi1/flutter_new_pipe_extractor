package dev.krtirtho.flutter_new_pipe_extractor.impl

import com.google.gson.*
import java.lang.reflect.Type
import java.time.OffsetDateTime
import java.time.ZoneOffset
import java.time.format.DateTimeFormatter

class OffsetDateTimeAdapterString : JsonSerializer<OffsetDateTime>, JsonDeserializer<OffsetDateTime> {
    override fun serialize(src: OffsetDateTime?, typeOfSrc: Type?, context: JsonSerializationContext?): JsonElement {
        return JsonPrimitive(src?.format(DateTimeFormatter.ISO_OFFSET_DATE_TIME)) // Serialize as string
    }

    override fun deserialize(json: JsonElement?, typeOfT: Type?, context: JsonDeserializationContext?): OffsetDateTime {
        return OffsetDateTime.parse(json?.asString, DateTimeFormatter.ISO_OFFSET_DATE_TIME) // Deserialize from string
    }
}

class OffsetDateTimeAdapterEpoch: JsonSerializer<OffsetDateTime>, JsonDeserializer<OffsetDateTime> {
    override fun serialize(src: OffsetDateTime?, typeOfSrc: Type?, context: JsonSerializationContext?): JsonElement {
        return JsonPrimitive(src?.toInstant()?.toEpochMilli()) // Convert to milliseconds
    }

    override fun deserialize(json: JsonElement?, typeOfT: Type?, context: JsonDeserializationContext?): OffsetDateTime {
        return OffsetDateTime.ofInstant(java.time.Instant.ofEpochMilli(json!!.asLong), ZoneOffset.UTC) // Convert back
    }
}