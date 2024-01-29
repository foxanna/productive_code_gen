import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';
import 'package:space_flight_news/di/di_container.dart';
import 'package:space_flight_news/di/di_initializer.dart';

Future<void> diIsInitialized(WidgetTester tester) async {
  await diContainer.reset();
  initDI(diContainer, Environment.test);
}
