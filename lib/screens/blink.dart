import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Blink extends StatefulWidget {
  const Blink({Key? key}) : super(key: key);

  @override
  State<Blink> createState() => _BlinkState();
}

class _BlinkState extends State<Blink> {
  // Add from here ...
  @override
  void initState() {
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
    super.initState();
  }
  // ... to here.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soil Report'),
      ),
      body: const WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://io.adafruit.com/shardoola/dashboards/agriculture-monitoring',
      ),
    );
  }
}