import 'package:client/screens/about/about.dart';
import 'package:client/screens/login/login.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MeO2',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: BackgroundColor,
          scaffoldBackgroundColor: BackgroundColor,
        ),
        home: SafeArea(
          child: login(),
        ));
  }
}
