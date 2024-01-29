import 'package:flutter_test/flutter_test.dart';

void iSeeWidget(WidgetTester tester, Type type) {
  expect(find.byType(type), findsOneWidget);
}
