import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({required this.url});
  final String url;

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(widget.url), // Use widget.url here
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Web View'),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
