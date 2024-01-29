import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:space_flight_news/di/di_container.dart';
import 'package:space_flight_news/domain/model/article.dart';
import 'package:space_flight_news/localization/build_context_extension.dart';
import 'package:space_flight_news/presentation/article_details/bloc/article_details_bloc.dart';
import 'package:space_flight_news/presentation/assets/assets.gen.dart';
import 'package:space_flight_news/presentation/widgets/page_content_error.dart';
import 'package:space_flight_news/presentation/widgets/page_content_loading.dart';

@RoutePage()
class ArticleDetailsPage extends StatelessWidget {
  const ArticleDetailsPage({
    super.key,
    @pathParam required this.articleId,
  });

  final String articleId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.translations.title)),
      body: BlocProvider(
        create: (context) => diContainer<ArticleDetailsBloc>(param1: articleId),
        child: BlocBuilder<ArticleDetailsBloc, ArticleDetailsState>(
          builder: (context, state) => switch (state) {
            InitialArticleDetailsState() => const SizedBox(),
            LoadingArticleDetailsState() => const PageContentLoading(),
            ContentArticleDetailsState() =>
              ArticleDetailsContent(article: state.article),
            ErrorArticleDetailsState() => PageContentError(
                onRetry: () => context
                    .read<ArticleDetailsBloc>()
                    .add(const RetryArticleDetailsEvent()),
              ),
          },
        ),
      ),
    );
  }
}

class ArticleDetailsContent extends StatelessWidget {
  const ArticleDetailsContent({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0) + MediaQuery.of(context).padding,
      children: [
        Text(
          article.title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        if (article.image != null)
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: FadeInImage.assetNetwork(
              placeholder: Assets.images.rocket.path,
              image: article.image!.toString(),
              imageErrorBuilder: (_, __, ___) => Image.asset(
                Assets.images.rocket.path,
                height: 300.0,
              ),
              height: 300.0,
            ),
          ),
        if (article.publishedAt != null || article.newsSite != null)
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: RichText(
              text: TextSpan(
                text: [
                  if (article.newsSite != null)
                    context.translations.publishedBy(article.newsSite!),
                  if (article.publishedAt != null)
                    context.translations.on(DateFormat.yMd(context.languageCode)
                        .format(article.publishedAt!)),
                ].join(' '),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      decoration:
                          article.url != null ? TextDecoration.underline : null,
                      color: article.url != null
                          ? Theme.of(context).colorScheme.primary
                          : null,
                    ),
                recognizer: article.url != null
                    ? (TapGestureRecognizer()
                      ..onTap = () => context
                          .read<ArticleDetailsBloc>()
                          .add(const ReadArticleArticleDetailsEvent()))
                    : null,
              ),
            ),
          ),
        if (article.summary != null)
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              article.summary!,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.justify,
            ),
          ),
        if (article.launches.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: TextButton(
                onPressed: () => context.read<ArticleDetailsBloc>().add(
                    OpenArticlesArticleDetailsEvent(article.launches.first.id)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      Assets.images.linked.path,
                      width: 16.0,
                      height: 16.0,
                    ),
                    const SizedBox(width: 8.0),
                    Text(context.translations.relatedArticles),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
