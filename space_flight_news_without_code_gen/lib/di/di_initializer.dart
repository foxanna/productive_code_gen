import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:space_flight_news/di/di_api_module.dart';
import 'package:space_flight_news/di/di_app_module.dart';
import 'package:space_flight_news/domain/api/api.dart';
import 'package:space_flight_news/navigation/navigator.dart';
import 'package:space_flight_news/navigation/router/router.dart';
import 'package:space_flight_news/presentation/article_details/bloc/article_details_bloc.dart';
import 'package:space_flight_news/presentation/articles_list/bloc/articles_list_bloc.dart';
import 'package:space_flight_news/util/launcher.dart';

enum Environment { dev, test, prod }

GetIt initDI(GetIt getIt, Environment environment) =>
    _initGetIt(getIt, environment: environment);

GetIt _initGetIt(GetIt getIt, {Environment? environment}) => getIt
  ..registerLazySingleton<Dio>(() => DIApiModule.createDio())
  ..registerFactory<SpaceFlightNewsApi>(() => SpaceFlightNewsApi(
    getIt<Dio>(),
    baseUrl: getIt<String>(instanceName: 'SpaceFlightNewsBaseUrl'),
  ))
  ..registerLazySingleton<String>(
        () => environment == Environment.test
        ? DIApiModule.testBaseUrl
        : DIApiModule.baseUrl,
    instanceName: 'SpaceFlightNewsBaseUrl',
  )
  ..registerFactoryParam((String? launchId, _) => ArticlesListBloc(
    getIt<SpaceFlightNewsApi>(),
    getIt<SpaceFlightNewsNavigator>(),
    launchId,
  ))
  ..registerFactoryParam((String articleId, _) => ArticleDetailsBloc(
    getIt<SpaceFlightNewsApi>(),
    getIt<SpaceFlightNewsNavigator>(),
    getIt<Launcher>(),
    articleId,
  ))
  ..registerLazySingleton(() => DIAppModule.key)
  ..registerLazySingleton(() => SpaceFlightNewsRouter(
    getIt<GlobalKey<NavigatorState>>(),
  ))
  ..registerFactory(() => SpaceFlightNewsNavigator(
    getIt<SpaceFlightNewsRouter>(),
  ))
  ..registerFactory(() => const Launcher());
