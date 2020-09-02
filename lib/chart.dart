import 'package:flutter/material.dart';

//import './splash_screen.dart';

class StockChart extends StatefulWidget {
  @override
  _StockChartState createState() => _StockChartState();
}

class _StockChartState extends State<StockChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Stock Smart Exchange Sure',
              style: TextStyle(
                  fontFamily: 'ASafePlacetoFall',
                  fontSize: 30.0,
                  color: Colors.white))),
      body: Container(
        child: Text('This is Chart Page'),
      ),
    );
  }
}
