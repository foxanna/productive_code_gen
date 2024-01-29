import 'package:flutter/material.dart';
import 'package:space_flight_news/localization/build_context_extension.dart';

class PageContentError extends StatelessWidget {
  const PageContentError({
    super.key,
    this.onRetry,
  });

  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.translations.error,
            textAlign: TextAlign.center,
          ),
          if (onRetry != null)
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: ElevatedButton(
                onPressed: onRetry,
                child: Text(context.translations.retry),
              ),
            ),
        ],
      ),
    );
  }
}
