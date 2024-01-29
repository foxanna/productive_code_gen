part of 'article_details_bloc.dart';

sealed class ArticleDetailsState {}

class InitialArticleDetailsState implements ArticleDetailsState {
  const InitialArticleDetailsState();
}

class ContentArticleDetailsState implements ArticleDetailsState {
  const ContentArticleDetailsState({required this.article});

  final Article article;
}

class LoadingArticleDetailsState implements ArticleDetailsState {
  const LoadingArticleDetailsState();
}

class ErrorArticleDetailsState implements ArticleDetailsState {
  const ErrorArticleDetailsState();
}
