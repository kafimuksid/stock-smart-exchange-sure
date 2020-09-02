import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_charts/charts.dart';
//import 'package:intl/intl.dart';

//import './splash_screen.dart';
//import './home.dart';

class StockChart extends StatefulWidget {
  @override
  _StockChartState createState() => _StockChartState();
}

class _StockChartState extends State<StockChart> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    //tradeNameFun();
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('SSES',
                style: TextStyle(
                    fontFamily: 'ASafePlacetoFall',
                    fontSize: 30.0,
                    color: Colors.white))),
        body: Column(
          children: [
            Center(
              child: Container(
                  height: 450,
                  //child: Text('This is Chart Container'),
                  child:
                      /*SfCartesianChart(
                    //                        This is where the chart magic was supposed to happen. Unfortunately I couldn't figure out how
                    //primaryXAxis: ,
                    ),*/
                      Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      ' Aww snap! Unfortunately this page is under Construction...',
                      style: TextStyle(
                          fontFamily: 'ArchitectsDaughter',
                          fontSize: 20.0,
                          color: Colors.orangeAccent),
                    ),
                  )),
            ),
            Center(
              child: Container(
                //margin: EdgeInsets.only(left: 150.0),
                padding: EdgeInsets.all(10.0),
                height: 50.0,
                color: Colors.orangeAccent,
                child: DropdownButton(
                    focusColor: Colors.orangeAccent,
                    dropdownColor: Colors.orangeAccent,
                    style: TextStyle(color: Colors.blueGrey[900]),
                    value: _value,
                    //onTap: hudai(),
                    items: [
                      DropdownMenuItem(
                        child: Text(
                            "Trade Names"), //Unfortunately I couldn't Add the trade names in the dropdown items
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("Second Item"),
                        value: 2,
                      ),
                      DropdownMenuItem(child: Text("Third Item"), value: 3),
                      DropdownMenuItem(child: Text("Fourth Item"), value: 4)
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    }),
              ),
            )
          ],
        ));
  }
}
