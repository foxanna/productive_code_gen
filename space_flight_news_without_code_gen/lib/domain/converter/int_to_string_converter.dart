class IntToStringConverter {
  const IntToStringConverter();

  String fromJson(int json) => '$json';

  int toJson(String object) => int.parse(object);
}
