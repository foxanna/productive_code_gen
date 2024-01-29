import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:space_flight_news/di/di_container.dart';
import 'package:space_flight_news/domain/model/article.dart';
import 'package:space_flight_news/localization/build_context_extension.dart';
import 'package:space_flight_news/presentation/articles_list/bloc/articles_list_bloc.dart';
import 'package:space_flight_news/presentation/assets/assets.gen.dart';
import 'package:space_flight_news/presentation/widgets/page_content_error.dart';
import 'package:space_flight_news/presentation/widgets/page_content_loading.dart';

@RoutePage()
class ArticlesListPage extends StatelessWidget {
  const ArticlesListPage({
    super.key,
    @queryParam this.launchId,
  });

  final String? launchId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.translations.title)),
      body: BlocProvider(
        create: (context) => diContainer<ArticlesListBloc>(param1: launchId),
        child: BlocBuilder<ArticlesListBloc, ArticlesListState>(
          builder: (context, state) => switch (state) {
            InitialArticlesListState() => const SizedBox(),
            LoadingArticlesListState() => const PageContentLoading(),
            ContentArticlesListState() =>
              ArticlesListContent(articles: state.articles),
            ErrorArticlesListState() => PageContentError(
                onRetry: () => context
                    .read<ArticlesListBloc>()
                    .add(const RetryArticlesListEvent()),
              ),
          },
        ),
      ),
    );
  }
}

class ArticlesListContent extends StatelessWidget {
  const ArticlesListContent({
    super.key,
    required this.articles,
  });

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];
        return ListTile(
          contentPadding: const EdgeInsets.all(16.0),
          title: Text(article.title),
          subtitle: article.publishedAt != null || article.newsSite != null
              ? Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    [
                      if (article.newsSite != null) article.newsSite!,
                      if (article.publishedAt != null)
                        DateFormat.yMd(context.languageCode)
                            .format(article.publishedAt!)
                    ].join(', '),
                  ),
                )
              : null,
          trailing: Visibility(
            visible: article.launches.isNotEmpty,
            child: Image.asset(
              Assets.images.linked.path,
              width: 24.0,
              height: 24.0,
            ),
          ),
          onTap: () => context
              .read<ArticlesListBloc>()
              .add(OpenDetailsArticlesListEvent(article.id)),
        );
      },
    );
  }
}
