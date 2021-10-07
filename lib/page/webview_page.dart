import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:web_browser/web_browser.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Permission.camera.isGranted;
}

class WebViewPasim extends StatefulWidget {
  @override
  _WebViewPasimState createState() => _WebViewPasimState();
}

class _WebViewPasimState extends State<WebViewPasim> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: WebBrowser(
            initialUrl: 'https://scanqrrandi.000webhostapp.com/',
            javascriptEnabled: true,
          ),
        ),
      ),
    );
  }
}
