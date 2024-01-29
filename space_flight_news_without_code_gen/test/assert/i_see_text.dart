import 'package:flutter_test/flutter_test.dart';

void iSeeText(WidgetTester tester, String text) {
  expect(find.text(text), findsOneWidget);
}
