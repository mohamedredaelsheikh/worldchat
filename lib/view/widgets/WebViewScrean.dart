import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:ahlachat/util/styles.dart';
import 'package:ahlachat/viewmodels/Auth_Viewmodel/LoginViewModel.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScrean extends StatefulWidget {
  String link , name;
  WebViewScrean({required this.link, required this.name});

  @override
  WebViewScreanState createState() => WebViewScreanState();
}
class WebViewScreanState extends State<WebViewScrean> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: whitecolor,iconTheme: IconThemeData(color: MainColor),title: Text( widget.name,style: style5,)),
      body: WebView(javascriptMode: JavascriptMode.unrestricted,
        initialUrl: widget.link,
      ),
    );
  }
}


class WebViewRollet extends StatefulWidget {
  String link , name;
  WebViewRollet({required this.link, required this.name});

  @override
  WebViewRolletState createState() => WebViewRolletState();
}
class WebViewRolletState extends State<WebViewRollet> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }
  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = {
    Factory(() => EagerGestureRecognizer())
  };

  UniqueKey _key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    LoginViewmodel user=  Provider.of<LoginViewmodel>(context,listen: true);
    return       WebView(javascriptMode: JavascriptMode.unrestricted,
      gestureRecognizers:gestureRecognizers ,key: _key,
      initialUrl: widget.link,allowsInlineMediaPlayback: true,initialMediaPlaybackPolicy: AutoMediaPlaybackPolicy.always_allow,


    );
  }
}
