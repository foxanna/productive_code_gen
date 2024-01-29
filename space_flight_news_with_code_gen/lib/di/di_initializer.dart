import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:space_flight_news/di/di_initializer.config.dart';

@injectableInit
GetIt initDI(GetIt getIt, String environment) =>
    getIt.init(environment: environment);
