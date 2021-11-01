import 'dart:math';

import 'getquestion.dart';

class Quiz {
  int question = 0;
  List<int> previousQuestion = [];
  List<Question> questionBox = [
    Question('Junk e-mail is also called ______', 'A) Spam', 'B) Spoof',
        'C) Sniffer script', 'D) Spool', 'A) Spam'),
    Question(
        'The basic operations performed by a computer are',
        '  A)  Arithmetic operation',
        'B) Logical operation',
        'C) Storage and relative',
        'D) All the above',
        'D) All the above'),
    Question(
        'Storage capacity of magnetic disk depends on',
        'A) tracks per inch of surface',
        'B) bits per inch of tracks',
        'C) disk pack in disk surface',
        'D) All of above',
        'D) All of above'),
    Question(
        'UNIVAC is',
        'A)  Universal Automatic Computer',
        'B) Universal Array Computer',
        'C) Unique Automatic Computer',
        'D) Unvalued Automatic Computer',
        'A)  Universal Automatic Computer'),
    Question(
        'Computer is free from tiresome and boardoom. We call it',
        'A) Accuracy',
        'B) Reliability',
        'C) Diligence',
        'D) Versatility',
        'C) Diligence'),
    Question(
        'Integrated Circuits (Ics) are related to which generation of computers?',
        'A) First generation',
        'B) Second generation',
        'C) Third generation',
        'D) Forth generation',
        'C) Third generation'),
    Question(
        'A dumb terminal has',
        'A) an embedded microprocessor',
        'B) extensive memory',
        'C) independent processing capability',
        'D) a keyboard and screen',
        'D) a keyboard and screen'),
    Question(
        'Which of the following is a popular programming language for developing multimedia webpages.',
        'A) COBOL',
        'B) Java',
        'C) BASIC',
        'D) Assembler',
        'B) Java'),
    Question(
        'The first computer was programmed using .......',
        'A) Assembly language',
        'B) Machine language',
        'C) Spaghetti code',
        'D) Source code',
        'B) Machine language'),
    Question(
        'The output quality of a printer is measured by',
        'A) Dot per sq. inch',
        'B) Dot per inch',
        'C) Dots printed per unit time',
        'D) All of the above',
        'A) Dot per sq. inch'),
    Question(
        'A physical connection between the microprocessor memory and other parts of the microcomputer is known as',
        'A) Path',
        'B) Address bus',
        'C) Route',
        'D) All of the above ',
        'B) Address bus'),
    Question(
        'A technique used by codes to convert an analog signal into a digital bit stream is known as',
        'A) Pulse code modulation',
        'B) Pulse stretcher',
        'C) Query processing',
        'D) Queue management',
        'A) Pulse code modulation'),
    Question(
        'Computers with 80286 microprocessor is',
        'A) XT computer',
        'B) AT comptuers',
        'C) PS/2 computer',
        'D) None of above',
        'B) AT comptuers'),
    Question(
        'The arranging of data in a logical sequence is called',
        'A)  Sorting',
        'B) Classifying',
        'C) Reproducing',
        'D) Summarizing',
        'A)  Sorting'),
    Question(
        'If in a computer, 16 bits are used to specify address in a RAM, the number of addresses will be',
        'A)  216',
        'B) 65,536',
        'C) 64K',
        'D) Any of the above',
        'B) 65,536'),
    Question(
      'A set of flip flops integrated together is called ____',
      'A) Counter',
      'B) Adder',
      'C) Register',
      'D) None of the above',
      'C) Register',
    ),
    Question('Which of the following refers to a small, single-site network ?',
        'A) LAN', 'B) DSL', 'C) RAM', 'D) USB', 'A) LAN'),
    Question(
        'A set of information that defines the status of resources allocated to a process is',
        'A) Process control',
        'B) ALU',
        'C) Register Unit',
        'D) Process description',
        'D) Process description'),
    Question('Properly arranged data is called', 'A) Field', 'B)  Words',
        'C) Information', 'D)  File', 'C) Information'),
    Question('The smallest unit in a digital system is a.........', 'A) Bit',
        'B) Byte', 'C) Character', 'D) Kilobyte', 'A) Bit'),
  ];
  int nextquestion() {
    if (previousQuestion.isEmpty) {
      previousQuestion.add(question);
    }
    Random random = new Random();
    question = random.nextInt(19);
    for (int j = 0; j < previousQuestion.length; j++) {
      if (previousQuestion[j] == question) {
        question = random.nextInt(19);
      }
    }
    previousQuestion.add(question);
    return question;
  }

  String getquestiontext(int q) {
    return questionBox[q].questiontext;
  }

  String getoptionA(int a) {
    return questionBox[a].optionA;
  }

  String getoptionB(int b) {
    return questionBox[b].optionB;
  }

  String getoptionC(int c) {
    return questionBox[c].optionC;
  }

  String getoptionD(int d) {
    return questionBox[d].optionD;
  }

  String getcorrectAnser(int co) {
    return questionBox[co].correctAnser;
  }
}
