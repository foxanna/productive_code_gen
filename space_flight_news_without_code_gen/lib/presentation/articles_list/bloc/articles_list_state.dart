part of 'articles_list_bloc.dart';

sealed class ArticlesListState {}

class InitialArticlesListState implements ArticlesListState {
  const InitialArticlesListState();
}

class ContentArticlesListState implements ArticlesListState {
  const ContentArticlesListState({
    this.articles = const <Article>[],
  });

  final List<Article> articles;
}

class LoadingArticlesListState implements ArticlesListState {
  const LoadingArticlesListState();
}

class ErrorArticlesListState implements ArticlesListState {
  const ErrorArticlesListState();
}
