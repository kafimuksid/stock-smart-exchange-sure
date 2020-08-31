import 'package:flutter/material.dart';

import './home.dart';
import './chart.dart';
import './splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/home': (context) => HomeScreen(),
          '/spsc': (context) => SplashScreen(),
          '/stock': (context) => StockChart(),
        },
        title: 'Stock Smart Exchange Sure',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          primaryColor: Colors.blueGrey,
          accentColor: Colors.orangeAccent,
          brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}
