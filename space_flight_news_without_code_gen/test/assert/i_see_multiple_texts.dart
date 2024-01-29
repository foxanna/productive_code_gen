import 'package:flutter_test/flutter_test.dart';

void iSeeMultipleTexts(WidgetTester tester, String text) {
  expect(find.text(text), findsWidgets);
}
