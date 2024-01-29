import 'package:flutter_test/flutter_test.dart';
import 'package:space_flight_news/presentation/article_details/article_details_page.dart';

import 'act/i_run_the_app.dart';
import 'act/i_tap_text.dart';
import 'act/i_wait.dart';
import 'arrange/api_is_mocked_to_fail.dart';
import 'arrange/api_is_mocked_to_succeed.dart';
import 'arrange/di_is_initialized.dart';
import 'assert/i_see_multiple_texts.dart';
import 'assert/i_see_text.dart';
import 'assert/i_see_widget.dart';

void main() {
  group('Articles list', () {
    testWidgets('Articles list first loading succeeded', (tester) async {
      // arrange
      await diIsInitialized(tester);
      apiIsMockedToSucceed(tester);

      // act
      await iRunTheApp(tester);

      // assert
      iSeeText(tester, 'Space Flight News');
      iSeeText(tester, 'UK launches consultation on Virgin Orbit launch');
      iSeeMultipleTexts(tester, 'SpaceNews, 7/22/2022');
    });

    testWidgets('Articles list first loading failed', (tester) async {
      // arrange
      await diIsInitialized(tester);
      apiIsMockedToFail(tester);

      // act
      await iRunTheApp(tester);

      // assert
      iSeeText(tester, 'Space Flight News');
      iSeeText(tester, 'Something went wrong');
      iSeeText(tester, 'Retry');
    });

    testWidgets('Articles list first loading failed but second succeeded',
        (tester) async {
      // arrange
      await diIsInitialized(tester);
      apiIsMockedToFail(tester);

      // act
      await iRunTheApp(tester);

      // assert
      iSeeText(tester, 'Retry');

      // arrange
      apiIsMockedToSucceed(tester);

      // act
      await iTapText(tester, 'Retry');
      await iWait(tester);

      // assert
      iSeeText(tester, 'UK launches consultation on Virgin Orbit launch');
      iSeeMultipleTexts(tester, 'SpaceNews, 7/22/2022');
    });

    testWidgets('Article details open on tap', (tester) async {
      // arrange
      await diIsInitialized(tester);
      apiIsMockedToSucceed(tester);

      // act
      await iRunTheApp(tester);
      await iTapText(tester, 'UK launches consultation on Virgin Orbit launch');
      await iWait(tester);

      // assert
      iSeeWidget(tester, ArticleDetailsPage);
    });
  });
}
