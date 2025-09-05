import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonLink extends StatelessWidget {
  const ButtonLink({super.key, required this.title, required this.url});

  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: SizedBox(
            width: width > 680 ? 680 : width * 0.95,
            child: TextButton(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(
                  EdgeInsets.symmetric(vertical: 25.0),
                ),
                backgroundColor: WidgetStateProperty.all(Colors.tealAccent),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              onPressed: () => launch(url),
              child: Text(title, style: TextStyle(fontSize: 16.0)),
            ),
          ),
        );
      },
    );
  }
}
