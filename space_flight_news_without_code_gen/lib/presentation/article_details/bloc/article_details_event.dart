part of 'article_details_bloc.dart';

sealed class ArticleDetailsEvent {}

class LoadArticleDetailsEvent implements ArticleDetailsEvent {
  const LoadArticleDetailsEvent();
}

class RetryArticleDetailsEvent implements ArticleDetailsEvent {
  const RetryArticleDetailsEvent();
}

class OpenArticlesArticleDetailsEvent implements ArticleDetailsEvent {
  const OpenArticlesArticleDetailsEvent(this.launchId);

  final String launchId;
}

class ReadArticleArticleDetailsEvent implements ArticleDetailsEvent {
  const ReadArticleArticleDetailsEvent();
}
