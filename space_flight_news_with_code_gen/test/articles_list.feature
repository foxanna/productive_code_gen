import 'package:space_flight_news/presentation/article_details/article_details_page.dart';

Feature: Articles list

  Background:
    Given di is initialized

  Scenario: Articles list first loading succeeded
    Given API is mocked to succeed
    And I run the app
    Then I see {'Space Flight News'} text
    And I see {'UK launches consultation on Virgin Orbit launch'} text
    And I see multiple {'SpaceNews, 7/22/2022'} texts

  Scenario: Articles list first loading failed
    Given API is mocked to fail
    And I run the app
    Then I see {'Space Flight News'} text
    And I see {'Something went wrong'} text
    And I see {'Retry'} text

  Scenario: Articles list first loading failed but second succeeded
    Given API is mocked to fail
    And I run the app
    And I see {'Retry'} text
    When API is mocked to succeed
    And I tap {'Retry'} text
    And I wait
    Then I see {'UK launches consultation on Virgin Orbit launch'} text
    And I see multiple {'SpaceNews, 7/22/2022'} texts

  Scenario: Article details open on tap
    Given API is mocked to succeed
    And I run the app
    When I tap {'UK launches consultation on Virgin Orbit launch'} text
    And I wait
    Then I see {ArticleDetailsPage} widget
