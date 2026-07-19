import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

import 'package:provider/provider.dart';
 import 'package:webview_flutter/webview_flutter.dart';

import '../../../../viewmodels/Games_ViewModel/Games_ViewModel.dart';

class GameScrean extends StatefulWidget {

  int index;
  GameScrean({required this.index, });

  @override
  GameScreanState createState() => GameScreanState();
}
class GameScreanState extends State<GameScrean> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance?.addPostFrameCallback((_) {
      GamesViewModel  Games= Provider.of<GamesViewModel>(context,listen: false);

      Games.IncreamentGames(id: Games.GamesList[widget.index].id,index: widget.index);
      if( Games.GamesList[widget.index].oriantation==1){
        Orintation();
      }
    });

    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }
Orintation()async{
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
}
UpOrintation()async{
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
  @override
  Widget build(BuildContext context) {
    GamesViewModel  Games= Provider.of<GamesViewModel>(context,listen: false);
    return WillPopScope(onWillPop: ()async{

      if( Games.GamesList[widget.index].oriantation==1){
        UpOrintation();
      }
      return true;
    },
      child: Scaffold(
         body: WebView(javascriptMode: JavascriptMode.unrestricted,
          initialUrl:Games.GamesList[widget.index].path,
        ),
      ),
    );
  }
}