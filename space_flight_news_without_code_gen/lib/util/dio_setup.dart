import 'package:dio/dio.dart';
import 'package:space_flight_news/domain/api/data/data_interceptor.dart';

// For demo purposes only! Do not repeat this in real life!

const _mockAPIData = false;
// const _mockAPIData = true;

extension DioX on Dio {
  Dio setUpForDemo() {
    if (_mockAPIData) {
      interceptors.add(SpaceFlightNewsDataInterceptor());
    }
    return this;
  }
}
