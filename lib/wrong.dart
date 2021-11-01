import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'main.dart';
import 'questionBox.dart';

Quiz quiz = Quiz();
List<int> wrongq = [];

class Wrong extends StatefulWidget {
  void wrong(int b) {
    wrongq.add(b);
  }

  @override
  _WrongState createState() => _WrongState();
}

class _WrongState extends State<Wrong> {
  int CurrentQuestion = wrongq.first;
  int Q = 1;
  int co = 0;
  int wr = 0;
  bool press = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('images/image1.jpg'),
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(left: 20, top: 70),
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  ' QUESTION  #  $Q ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontStyle: FontStyle.normal),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.only(top: 30, left: 30, right: 20),
                child: Text(
                  quiz.getquestiontext(CurrentQuestion),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontStyle: FontStyle.normal),
                  textAlign: TextAlign.justify,
                  maxLines: 3,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Correct anser is ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontStyle: FontStyle.normal),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      quiz.getcorrectAnser(CurrentQuestion),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontStyle: FontStyle.normal),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 180, top: 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: FlatButton(
                    onPressed: () {
                      if (Q == wrongq.length) {
                        Alert(
                          context: context,
                          type: AlertType.success,
                          title: "GOOD LUCK",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "Retake Quiz",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QuizApp())),
                              width: 150,
                            )
                          ],
                        ).show();
                      }
                      setState(() {
                        nextquestion();
                      });
                    },
                    child: Text(
                      'Next Question',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.normal),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void nextquestion() {
    setState(() {
      if (Q < wrongq.length) {
        CurrentQuestion = wrongq[Q];
        Q++;
      }
    });
  }
}
