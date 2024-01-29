import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:space_flight_news/di/di_container.dart';
import 'package:space_flight_news/domain/api/data/failure_interceptor.dart';

Future<void> apiIsMockedToFail(WidgetTester tester) async {
  final interceptors = diContainer<Dio>().interceptors;
  interceptors.clear();
  interceptors.add(SpaceFlightNewsFailureInterceptor());
}
