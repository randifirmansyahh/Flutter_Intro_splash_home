import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() {
  runApp(WebviewPlugin());
}

class WebviewPlugin extends StatefulWidget {
  @override
  _WebviewPluginState createState() => _WebviewPluginState();
}

class _WebviewPluginState extends State<WebviewPlugin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WebviewScaffold(
        url: "https://scanqrrandi.000webhostapp.com/",
        hidden: true,
        appBar: AppBar(
          title: Text("Perpus Pasim"),
        ),
      ),
    );
  }
}
