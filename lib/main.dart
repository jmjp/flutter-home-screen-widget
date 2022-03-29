import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_widget/home_widget.dart';
import 'package:penny/core/services/api.service.dart';
import 'package:penny/themes/default.theme.dart';
import 'package:penny/views/home/home.responsive.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  HomeWidget.registerBackgroundCallback(backgroundCallback);
  runApp(MyApp());
}
// Called when Doing Background Work initiated from Widget
Future<void> backgroundCallback(Uri? uri) async {
  if(uri != null && uri.host == 'retrivedata'){
    ApiService _api = ApiService();
    debugPrint("chamou +1 vez");
    var rng = Random();
    var response = await _api.get('posts/${rng.nextInt(100)}');
    if(response.statusCode == 200){
      await HomeWidget.saveWidgetData<String>('_data', jsonEncode(response.data));
      await HomeWidget.updateWidget(name: 'AppWidgetProvider', iOSName: 'AppWidgetProvider');
    }
  }
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'Penny',
      home: Home(),
      theme: DefaultTheme.darkTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}