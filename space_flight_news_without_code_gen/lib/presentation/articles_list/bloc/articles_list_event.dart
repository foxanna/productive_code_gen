part of 'articles_list_bloc.dart';

sealed class ArticlesListEvent {}

class LoadArticlesListEvent implements ArticlesListEvent {
  const LoadArticlesListEvent();
}

class RetryArticlesListEvent implements ArticlesListEvent {
  const RetryArticlesListEvent();
}

class OpenDetailsArticlesListEvent implements ArticlesListEvent {
  const OpenDetailsArticlesListEvent(this.articleId);

  final String articleId;
}
