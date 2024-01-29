import 'package:dio/dio.dart';
import 'package:space_flight_news/util/dio_setup.dart';

abstract class DIApiModule {
  static Dio createDio() => Dio()..setUpForDemo();

  static String get baseUrl => 'https://api.spaceflightnewsapi.net/v3';

  static String get testBaseUrl => 'https://mock';
}
