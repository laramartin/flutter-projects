import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

void main() => runApp(WebViewDemo());

class WebViewDemo extends StatelessWidget {
  WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    var _channel = JavascriptChannel(
      name: "LaraDemo",
      onMessageReceived: (message) {
        print(message.message);
      }
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("WebViews playground"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () async {
                await _controller.reload();
              },
            ),
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () async {
                if (await _controller.canGoBack()) {
                  print(Text("can go back!"));
                  _controller.goBack();
                } else {
                  print(Text("cannot go back"));
                  // TODO: disable button
                }
              },
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () async {
                if (await _controller.canGoForward()) {
                  _controller.goForward();
                } else {
                  // TODO: disable button
                }
              },
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 400.0,
              child: WebView(
                initialUrl: "https://www.flutter.dev/",
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController) {
                  _controller = webViewController;
                },
                onPageFinished: (url) {
                  // use the URL
                },
                navigationDelegate: (request) {
                  bool isHost = request.url.startsWith("https://flutter.dev");
                  if (isHost)
                    return NavigationDecision.navigate;
                  else
                    return NavigationDecision.prevent;
                },
              ),
            ),
            Container(
              height: 100.0,
              child: WebView(
                initialUrl: "http://192.168.0.55:8000",
                javascriptChannels: {_channel},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
