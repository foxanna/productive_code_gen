import 'package:flutter_test/flutter_test.dart';
import 'package:space_flight_news/app.dart';

Future<void> iRunTheApp(WidgetTester tester) async {
  await tester.pumpWidget(const SpaceFlightNewsApp());
  await tester.pumpAndSettle();
}
