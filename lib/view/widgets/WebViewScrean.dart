import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:ahlachat/util/styles.dart';
import 'package:ahlachat/viewmodels/Auth_Viewmodel/LoginViewModel.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScrean extends StatefulWidget {
  String link , name;
  WebViewScrean({super.key, required this.link, required this.name});

  @override
  WebViewScreanState createState() => WebViewScreanState();
}
class WebViewScreanState extends State<WebViewScrean> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.link));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: whitecolor,iconTheme: const IconThemeData(color: MainColor),title: Text( widget.name,style: style5,)),
      body: WebViewWidget(controller: _controller),
    );
  }
}


class WebViewRollet extends StatefulWidget {
  String link , name;
  WebViewRollet({super.key, required this.link, required this.name});

  @override
  WebViewRolletState createState() => WebViewRolletState();
}
class WebViewRolletState extends State<WebViewRollet> {
  late final WebViewController _controller;

  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = {
    Factory(() => EagerGestureRecognizer())
  };

  final UniqueKey _key = UniqueKey();

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.link));
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<LoginViewmodel>(context,listen: true);
    return WebViewWidget(
      controller: _controller,
      key: _key,
      gestureRecognizers: gestureRecognizers,
    );
  }
}
