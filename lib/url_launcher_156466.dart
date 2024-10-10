import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(UnSupportedApp());
}

class UnSupportedApp extends StatelessWidget {
  const UnSupportedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Text.rich(
          TextSpan(
            text: 'If you have already downloaded the app, ',
            children: [
              TextSpan(
                text: 'click here to redirect to app',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    final customUri = Uri(
                        // Replace with your schema and host
                        scheme: "abcdef",
                        host: "dddddd",
                        path: "/",
                    );
                    print(customUri.toString());
                    launchUrl(
                      customUri,
                      mode: LaunchMode.externalApplication,
                    );
                  },
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.blue),
              ),
            ],
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      )),
    );
  }
}
