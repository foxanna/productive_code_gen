import 'package:flutter_test/flutter_test.dart';

Future<void> iWait(WidgetTester tester) async {
  await tester.pumpAndSettle();
}
