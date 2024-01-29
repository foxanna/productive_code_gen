import 'package:flutter/material.dart';

abstract class DIAppModule {
  static GlobalKey<NavigatorState> get key => GlobalKey<NavigatorState>();
}
