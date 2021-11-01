import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

import 'main.dart';
import 'wrong.dart';

List<int> correct = [];
List<int> wrong = [];
Wrong _wrong = Wrong();

class Result extends StatefulWidget {
  void getcorrect(int a) {
    correct.add(a);
  }

  void getwrong(int b) {
    wrong.add(b);
    _wrong.wrong(b);
  }

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  Result _result = Result();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        decoration: BoxDecoration(
            color: Colors.brown,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/image3.jpg'),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 100, left: 10, right: 10),
              child: FAProgressBar(
                displayText: '%',
                currentValue: (correct.length) * 10,
                maxValue: 100,
                size: 40,
                animatedDuration: Duration(microseconds: 100),
                direction: Axis.horizontal,
                backgroundColor: Colors.red,
                borderRadius: 5,
                progressColor: Colors.green,
                displayTextStyle: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 10, right: 10),
              child: FAProgressBar(
                currentValue: (wrong.length) * 10,
                displayText: '%',
                maxValue: 100,
                size: 40,
                animatedDuration: Duration(microseconds: 100),
                direction: Axis.horizontal,
                backgroundColor: Colors.green,
                borderRadius: 5,
                progressColor: Colors.red,
                displayTextStyle: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 200, left: 10, right: 10),
              height: 100,
              width: 400,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red),
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Wrong()));
                          });
                        },
                        child: Text(
                          'Check Wrong Q',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.normal),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            correct.clear();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QuizApp()));
                          });
                        },
                        child: Text(
                          'RETAKE QUIZ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.normal),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
