import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class web_view extends StatefulWidget {
  web_view({required this.URl});
  String URl;

  @override
  State<web_view> createState() => _web_viewState();
}

class _web_viewState extends State<web_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(initialUrl: widget.URl,
      javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController)
        {
          setState(() {

          });
        },
      ),


    );
  }
}
