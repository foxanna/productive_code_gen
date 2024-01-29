Configure your IDE to help you declare [freezed](https://pub.dev/packages/freezed) serializable models in the fastest way possible.

## VSCode

For configuring VSCode with Code Snippets, check out [this video tutorial](https://youtu.be/71Bv134b_M4).

#### Code Snippet 

```json
{
  "Serializable freezed model": {
    "prefix": "fmodel",
    "description": "Declare a serializable freezed model",
    "body": [
      "import 'package:freezed_annotation/freezed_annotation.dart';",
      "",
      "part '${TM_FILENAME_BASE}.freezed.dart';",
      "part '${TM_FILENAME_BASE}.g.dart';",
      "",
      "@freezed",
      "class ${TM_FILENAME_BASE/(.*)/${1:/pascalcase}/g} with _$${TM_FILENAME_BASE/(.*)/${1:/pascalcase}/g} {",
      "  const factory ${TM_FILENAME_BASE/(.*)/${1:/pascalcase}/g}({",
      "    ${0}",
      "  }) = _${TM_FILENAME_BASE/(.*)/${1:/pascalcase}/g};",
      "",
      "  factory ${TM_FILENAME_BASE/(.*)/${1:/pascalcase}/g}.fromJson(Map<String, dynamic> json) => ",
      "      _$${TM_FILENAME_BASE/(.*)/${1:/pascalcase}/g}FromJson(json);",
      "}"
    ]
  }
}
```

## Android Studio / IntelliJ IDEA

For configuring Android Studio or IntelliJ IDEA with Live Template, check out [this video tutorial](https://youtu.be/_upGewxWNZ4).

#### Live Template

**Text:**

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part '$FILE_NAME$.freezed.dart';
part '$FILE_NAME$.g.dart';

@freezed
class $CLASS_NAME$ with _$$$CLASS_NAME$ {
  const factory $CLASS_NAME$ ({
    $END$
  }) = _$CLASS_NAME$;
  
  factory $CLASS_NAME$.fromJson(Map<String, dynamic> json) =>
    _$$$CLASS_NAME$FromJson(json);
}
```

**Variables:**

| Name | Value |
|------|-------|
| `FILE_NAME` | `fileNameWithoutExtension()` |
| `CLASS_NAME` | `capitalize(camelCase(fileNameWithoutExtension()))` |
