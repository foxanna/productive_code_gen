import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:space_flight_news/di/di_container.dart';
import 'package:space_flight_news/localization/localizations.dart';
import 'package:space_flight_news/navigation/router/router.dart';

class SpaceFlightNewsApp extends StatelessWidget {
  const SpaceFlightNewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: diContainer<GlobalKey<NavigatorState>>(),
      initialRoute: SpaceFlightNewsRouter.initialRoute,
      onGenerateRoute: diContainer<SpaceFlightNewsRouter>().onGenerateRoute,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.black,
          primary: Colors.amberAccent,
          surface: const Color(0xFF102A43),
        ),
        scaffoldBackgroundColor: const Color(0xFF243B53),
      ),
      supportedLocales: SpaceFlightNewsLocalizations.supportedLocales,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        SpaceFlightNewsLocalizations.delegate,
      ],
    );
  }
}
