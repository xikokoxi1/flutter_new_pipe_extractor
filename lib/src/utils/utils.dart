/// Casts a map to a map of type [Map<String, dynamic>] recursively
/// without recreating the map.
Map<String, dynamic> deepCastMap(Map map) {
  map.forEach((key, value) {
    if (value is Map) {
      map[key] = deepCastMap(value);
    } else if (value is List) {
      for (var i = 0; i < value.length; i++) {
        if (value[i] is Map) {
          value[i] = deepCastMap(value[i]);
        }
      }
    } else {
      map[key] = value;
    }
  });
  return map.cast<String, dynamic>();
}
