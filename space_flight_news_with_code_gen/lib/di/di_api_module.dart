import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:space_flight_news/util/dio_setup.dart';

@module
abstract class DIApiModule {
  @lazySingleton
  Dio createDio() => Dio()..setUpForDemo();

  @prod
  @dev
  @Named('SpaceFlightNewsBaseUrl')
  String get baseUrl => 'https://api.spaceflightnewsapi.net/v3';

  @test
  @Named('SpaceFlightNewsBaseUrl')
  String get testBaseUrl => 'https://mock';
}
