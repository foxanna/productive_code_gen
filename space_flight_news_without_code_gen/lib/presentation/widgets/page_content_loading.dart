import 'package:flutter/material.dart';

class PageContentLoading extends StatelessWidget {
  const PageContentLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
