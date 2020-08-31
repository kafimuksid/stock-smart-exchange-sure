import 'package:flutter/material.dart';

import './chart.dart';

Future goToSurveyForm(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => StockChart()));
}

class HomeScreen extends StatelessWidget {
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
                    SizedBox(height: 20.0),
                    FloatingActionButton.extended(
                      heroTag: "btn1",
                      onPressed: () {
                        goToSurveyForm(context);
                      },
                      icon: Icon(Icons.multiline_chart),
                      label: Text(
                        'See OHLC Chart',
                        style: TextStyle(color: Colors.blueGrey[800]),
                      ),
                      backgroundColor: Colors.orangeAccent,
                    ),
                    SizedBox(height: 20.0),
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

// void goToSurveyForm() {
//   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//     return SurveyForm();
//   }));
// }
