import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Zoomearth extends StatefulWidget {
  const Zoomearth({Key? key}) : super(key: key);

  @override
  State<Zoomearth> createState() => _ZoomearthState();
}

class _ZoomearthState extends State<Zoomearth> {
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
        title: const Text('Zoom Earth'),
      ),
      body: const WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://zoom.earth/',
      ),
    );
  }
}