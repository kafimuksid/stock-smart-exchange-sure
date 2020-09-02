import 'package:flutter/material.dart';
import 'dart:convert';

import './chart.dart';

var mydata;
List tradename;
List datelist;
List hilist;
List lolist;
List openlist;
List closelist;

Future goToSurveyForm(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => StockChart()));
}

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List data;
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
        body: Center(
            child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        'Welcome to SSES app. The data given below is of the current stock market',
                        textAlign: TextAlign.start,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontFamily: 'ArchitectsDaughter',
                            fontSize: 20.0,
                            color: Colors.orangeAccent),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Date'),
                        Text('Trade Code'),
                        Text('High'),
                        Text('Low'),
                        Text('Open'),
                        Text('Close'),
                        Text('Volume'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '=======',
                          style: TextStyle(color: Colors.orangeAccent),
                        ),
                        Text(
                          '=======',
                          style: TextStyle(color: Colors.orangeAccent),
                        ),
                        Text(
                          '=======',
                          style: TextStyle(color: Colors.orangeAccent),
                        ),
                        Text(
                          '=======',
                          style: TextStyle(color: Colors.orangeAccent),
                        ),
                        Text(
                          '=======',
                          style: TextStyle(color: Colors.orangeAccent),
                        ),
                        Text(
                          '=======',
                          style: TextStyle(color: Colors.orangeAccent),
                        ),
                        Text(
                          '=======',
                          style: TextStyle(color: Colors.orangeAccent),
                        ),
                      ],
                    ),
                    Container(
                      //color: Colors.white,
                      height: MediaQuery.of(context).size.height / 1.75,
                      //width: MediaQuery.of(context).size.width / 2,
                      child: ListView.builder(
                        //padding: const EdgeInsets.all(8),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              //getJsonData()
                              Container(
                                //margin: ,
                                child: FutureBuilder(
                                  future: DefaultAssetBundle.of(context)
                                      .loadString(
                                          'load_json/stock_market_data.json'),
                                  builder: (context, snapshot) {
                                    var mydata =
                                        json.decode(snapshot.data.toString());
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        new Text(mydata[index]['date']),
                                        new Text(mydata[index]['trade_code']),
                                        new Text(mydata[index]['high']),
                                        new Text(mydata[index]['low']),
                                        new Text(mydata[index]['open']),
                                        new Text(mydata[index]['close']),
                                        new Text(mydata[index]['volume']),
                                      ],
                                    );
                                  },
                                ),
                              )
                            ],
                          );
                        },
                        //itemCount: mydata == null ? 0 : mydata.length, //This is to detect when to stop building for the list vieworangeaccent
                      ),
                    ),
                    SizedBox(height: 20.0),
                    FloatingActionButton.extended(
                      heroTag: "btn1",
                      onPressed: () {
                        goToSurveyForm(context);
                      },
                      icon: Icon(Icons.multiline_chart),
                      label: Text(
                        'See OHLC Chart',
                        style: TextStyle(color: Colors.blueGrey[900]),
                      ),
                      backgroundColor: Colors.orangeAccent,
                    ),
                  ],
                ))

            /*Card( 
            color: Colors.grey[300],
            elevation: 10.0,
            child: Container(
                height: 100.0,
                width: 100.0,
                alignment: Alignment.center,
                child: Text(
                  'Welcome Home!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0),
                )),
          ),*/
            ));
  }
}

void tradeNameFun() {
  // THis function was made for easier access to the trade names
  for (int i = 0; i < mydata.length; i++) {
    if (mydata[i]['trade_code'] != null ||
        mydata[i]['trade_code'] != mydata[i - 1]['trade_code']) {
      tradename.add(mydata[i]['trade_code']);
    }
  }
}

/*void dateFun() {
  for (int i = 0; i < mydata.length; i++) {
    if (mydata[i]['date'] != null ||
        mydata[i]['date'] != mydata[i - 1]['date']) {
      datelist.add(mydata[i]['date']);
    }
  }
}

void tradeNameFun() {
  for (int i = 0; i < mydata.length; i++) {
    if (mydata[i]['trade_code'] != null ||
        mydata[i]['trade_code'] != mydata[i - 1]['trade_code']) {
      tradename.add(mydata[i]['trade_code']);
    }
  }
}

void tradeNameFun() {
  for (int i = 0; i < mydata.length; i++) {
    if (mydata[i]['trade_code'] != null ||
        mydata[i]['trade_code'] != mydata[i - 1]['trade_code']) {
      tradename.add(mydata[i]['trade_code']);
    }
  }
}

void tradeNameFun() {
  for (int i = 0; i < mydata.length; i++) {
    if (mydata[i]['trade_code'] != null ||
        mydata[i]['trade_code'] != mydata[i - 1]['trade_code']) {
      tradename.add(mydata[i]['trade_code']);
    }
  }
}*/
