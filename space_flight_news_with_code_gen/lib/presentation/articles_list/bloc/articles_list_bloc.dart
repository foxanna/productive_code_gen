import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:space_flight_news/domain/api/api.dart';
import 'package:space_flight_news/domain/model/article.dart';
import 'package:space_flight_news/navigation/navigator.dart';

part 'articles_list_event.dart';
part 'articles_list_state.dart';

@injectable
class ArticlesListBloc extends Bloc<ArticlesListEvent, ArticlesListState> {
  ArticlesListBloc(
    this._api,
    this._navigator,
    @factoryParam this._launchId,
  ) : super(const InitialArticlesListState()) {
    on<ArticlesListEvent>(
      (event, emit) => switch (event) {
        LoadArticlesListEvent() => _onLoad(event, emit),
        RetryArticlesListEvent() => _onRetry(event, emit),
        OpenDetailsArticlesListEvent() => _onOpenDetails(event, emit),
      },
    );

    add(const LoadArticlesListEvent());
  }

  final SpaceFlightNewsApi _api;
  final SpaceFlightNewsNavigator _navigator;

  final String? _launchId;

  Future<void> _onLoad(
    LoadArticlesListEvent event,
    Emitter<ArticlesListState> emit,
  ) async {
    if (state is LoadingArticlesListState) {
      return;
    }

    emit(const LoadingArticlesListState());

    try {
      final articles = _launchId != null
          ? await _api.getArticlesByLaunch(launchId: _launchId)
          : await _api.getArticles();
      emit(ContentArticlesListState(articles: articles));
    } on Exception {
      emit(const ErrorArticlesListState());
    }
  }

  Future<void> _onRetry(
    RetryArticlesListEvent event,
    Emitter<ArticlesListState> emit,
  ) async {
    add(const LoadArticlesListEvent());
  }

  Future<void> _onOpenDetails(
    OpenDetailsArticlesListEvent event,
    Emitter<ArticlesListState> emit,
  ) async {
    await _navigator.goToArticleDetails(event.articleId);
  }
}
