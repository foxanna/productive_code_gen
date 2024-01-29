import 'package:flutter/material.dart';
import 'package:space_flight_news/app.dart';
import 'package:space_flight_news/di/di_container.dart';
import 'package:space_flight_news/di/di_initializer.dart';

void main() {
  initDI(diContainer, Environment.prod);
  runApp(const SpaceFlightNewsApp());
}
