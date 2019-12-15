extension CustomList on List {
  dynamic distinctBy(String property) {
    return map((it) => it[property])
        .toSet()
        .map((it) => firstWhere((o) => o[property] == it))
        .toList();
  }
}
