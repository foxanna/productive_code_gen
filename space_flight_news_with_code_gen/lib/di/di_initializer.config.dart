// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:space_flight_news/di/di_api_module.dart' as _i11;
import 'package:space_flight_news/di/di_app_module.dart' as _i12;
import 'package:space_flight_news/domain/api/api.dart' as _i7;
import 'package:space_flight_news/navigation/navigator.dart' as _i8;
import 'package:space_flight_news/navigation/router/router.dart' as _i6;
import 'package:space_flight_news/presentation/article_details/bloc/article_details_bloc.dart'
    as _i9;
import 'package:space_flight_news/presentation/articles_list/bloc/articles_list_bloc.dart'
    as _i10;
import 'package:space_flight_news/util/launcher.dart' as _i5;

const String _prod = 'prod';
const String _dev = 'dev';
const String _test = 'test';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dIApiModule = _$DIApiModule();
    final dIAppModule = _$DIAppModule();
    gh.lazySingleton<_i3.Dio>(() => dIApiModule.createDio());
    gh.lazySingleton<_i4.GlobalKey<_i4.NavigatorState>>(() => dIAppModule.key);
    gh.factory<_i5.Launcher>(() => const _i5.Launcher());
    gh.lazySingleton<_i6.SpaceFlightNewsRouter>(() =>
        _i6.SpaceFlightNewsRouter(gh<_i4.GlobalKey<_i4.NavigatorState>>()));
    gh.factory<String>(
      () => dIApiModule.baseUrl,
      instanceName: 'SpaceFlightNewsBaseUrl',
      registerFor: {
        _prod,
        _dev,
      },
    );
    gh.factory<String>(
      () => dIApiModule.testBaseUrl,
      instanceName: 'SpaceFlightNewsBaseUrl',
      registerFor: {_test},
    );
    gh.factory<_i7.SpaceFlightNewsApi>(() => _i7.SpaceFlightNewsApi(
          gh<_i3.Dio>(),
          baseUrl: gh<String>(instanceName: 'SpaceFlightNewsBaseUrl'),
        ));
    gh.factory<_i8.SpaceFlightNewsNavigator>(
        () => _i8.SpaceFlightNewsNavigator(gh<_i6.SpaceFlightNewsRouter>()));
    gh.factoryParam<_i9.ArticleDetailsBloc, String, dynamic>((
      _articleId,
      _,
    ) =>
        _i9.ArticleDetailsBloc(
          gh<_i7.SpaceFlightNewsApi>(),
          gh<_i8.SpaceFlightNewsNavigator>(),
          gh<_i5.Launcher>(),
          _articleId,
        ));
    gh.factoryParam<_i10.ArticlesListBloc, String?, dynamic>((
      _launchId,
      _,
    ) =>
        _i10.ArticlesListBloc(
          gh<_i7.SpaceFlightNewsApi>(),
          gh<_i8.SpaceFlightNewsNavigator>(),
          _launchId,
        ));
    return this;
  }
}

class _$DIApiModule extends _i11.DIApiModule {}

class _$DIAppModule extends _i12.DIAppModule {}
