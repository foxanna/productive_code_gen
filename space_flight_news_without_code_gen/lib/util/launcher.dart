import 'package:url_launcher/url_launcher.dart';

class Launcher {
  const Launcher();

  Future<void> launch(String link) async {
    try {
      final url = Uri.parse(link);
      await launchUrl(url);
    } catch (_) {}
  }
}
