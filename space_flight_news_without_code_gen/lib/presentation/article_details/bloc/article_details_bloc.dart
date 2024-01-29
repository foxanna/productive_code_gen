import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_flight_news/domain/api/api.dart';
import 'package:space_flight_news/domain/model/article.dart';
import 'package:space_flight_news/navigation/navigator.dart';
import 'package:space_flight_news/util/launcher.dart';

part 'article_details_event.dart';
part 'article_details_state.dart';

class ArticleDetailsBloc
    extends Bloc<ArticleDetailsEvent, ArticleDetailsState> {
  ArticleDetailsBloc(
    this._api,
    this._navigator,
    this._launcher,
    this._articleId,
  ) : super(const InitialArticleDetailsState()) {
    on<ArticleDetailsEvent>(
      (event, emit) => switch (event) {
        LoadArticleDetailsEvent() => _onLoad(event, emit),
        RetryArticleDetailsEvent() => _onRetry(event, emit),
        OpenArticlesArticleDetailsEvent() => _onOpenArticles(event, emit),
        ReadArticleArticleDetailsEvent() => _onReadArticle(event, emit),
      },
    );

    add(const LoadArticleDetailsEvent());
  }

  final SpaceFlightNewsApi _api;
  final SpaceFlightNewsNavigator _navigator;
  final Launcher _launcher;

  final String _articleId;

  Future<void> _onLoad(
    LoadArticleDetailsEvent event,
    Emitter<ArticleDetailsState> emit,
  ) async {
    if (state is LoadingArticleDetailsState) {
      return;
    }

    emit(const LoadingArticleDetailsState());

    try {
      final article = await _api.getArticle(_articleId);
      emit(ContentArticleDetailsState(article: article));
    } on Exception {
      emit(const ErrorArticleDetailsState());
    }
  }

  Future<void> _onRetry(
    RetryArticleDetailsEvent event,
    Emitter<ArticleDetailsState> emit,
  ) async {
    add(const LoadArticleDetailsEvent());
  }

  Future<void> _onOpenArticles(
    OpenArticlesArticleDetailsEvent event,
    Emitter<ArticleDetailsState> emit,
  ) async {
    await _navigator.goToArticlesList(event.launchId);
  }

  Future<void> _onReadArticle(
    ReadArticleArticleDetailsEvent event,
    Emitter<ArticleDetailsState> emit,
  ) async {
    final currentState = state;
    if (currentState is ContentArticleDetailsState &&
        currentState.article.url != null) {
      await _launcher.launch(currentState.article.url!);
    }
  }
}
