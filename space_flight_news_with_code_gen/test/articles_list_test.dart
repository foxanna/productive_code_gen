// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:space_flight_news/presentation/article_details/article_details_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/di_is_initialized.dart';
import './step/api_is_mocked_to_succeed.dart';
import './step/i_run_the_app.dart';
import 'package:bdd_widget_test/step/i_see_text.dart';
import 'package:bdd_widget_test/step/i_see_multiple_texts.dart';
import './step/api_is_mocked_to_fail.dart';
import 'package:bdd_widget_test/step/i_tap_text.dart';
import 'package:bdd_widget_test/step/i_wait.dart';
import 'package:bdd_widget_test/step/i_see_widget.dart';

void main() {
  group('''Articles list''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await diIsInitialized(tester);
    }
    testWidgets('''Articles list first loading succeeded''', (tester) async {
      await bddSetUp(tester);
      await apiIsMockedToSucceed(tester);
      await iRunTheApp(tester);
      await iSeeText(tester, 'Space Flight News');
      await iSeeText(tester, 'UK launches consultation on Virgin Orbit launch');
      await iSeeMultipleTexts(tester, 'SpaceNews, 7/22/2022');
    });
    testWidgets('''Articles list first loading failed''', (tester) async {
      await bddSetUp(tester);
      await apiIsMockedToFail(tester);
      await iRunTheApp(tester);
      await iSeeText(tester, 'Space Flight News');
      await iSeeText(tester, 'Something went wrong');
      await iSeeText(tester, 'Retry');
    });
    testWidgets('''Articles list first loading failed but second succeeded''', (tester) async {
      await bddSetUp(tester);
      await apiIsMockedToFail(tester);
      await iRunTheApp(tester);
      await iSeeText(tester, 'Retry');
      await apiIsMockedToSucceed(tester);
      await iTapText(tester, 'Retry');
      await iWait(tester);
      await iSeeText(tester, 'UK launches consultation on Virgin Orbit launch');
      await iSeeMultipleTexts(tester, 'SpaceNews, 7/22/2022');
    });
    testWidgets('''Article details open on tap''', (tester) async {
      await bddSetUp(tester);
      await apiIsMockedToSucceed(tester);
      await iRunTheApp(tester);
      await iTapText(tester, 'UK launches consultation on Virgin Orbit launch');
      await iWait(tester);
      await iSeeWidget(tester, ArticleDetailsPage);
    });
  });
}
