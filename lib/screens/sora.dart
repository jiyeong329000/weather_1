import 'package:untitled2/screens/material.dart';
import 'package:flutter/material.dart';
import 'dart:math';


class SoraScreen extends StatefulWidget {
  @override
  _soraScreenState createState() => _soraScreenState();
}

class _soraScreenState extends State<SoraScreen> {
  int? rnd = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(backgroundColor: Colors.black12, title: Text('마법의 소라고동')),
        body:
        Column(children: [
         Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 20),
          child: Container(
           width: 320,
           height: 100,
           decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(30),
            color: Colors.white38,
           ),
           child: RaisedButton(
             color: Colors.transparent,
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Text('겉옷을 걸칠까',
                 style: TextStyle(
                   fontSize: 20, fontWeight: FontWeight.bold))
             ],
            ),
            onPressed: () {
               setState(() {
                 rnd = Random().nextInt(2);
               });
               if (rnd == 0) {
                 AlertDialog dialog = AlertDialog(
                   content: Text('Yes'),
                 );
                 showDialog(
                   context: context,
                   builder: (BuildContext context) => dialog);
               } else {
                 AlertDialog dialog = AlertDialog(content: Text('No'));
                 showDialog(
                   context: context,
                   builder: (BuildContext context) => dialog);
               }
            }),
           ),
          ),
          Padding(
           padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
           child: Container(
            width: 320,
            height: 100,
            decoration: BoxDecoration(
             border: Border.all(color: Colors.black12),
             borderRadius: BorderRadius.circular(30),
             color: Colors.white38,
            ),
            child: RaisedButton(
              color: Colors.transparent,
              child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Text('무슨색 옷을 입을까',
                  style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold))
               ],
              ),
             onPressed: () {
              setState(() {
               rnd = Random().nextInt(7);
              });
              if (rnd == 0) {
                AlertDialog dialog = AlertDialog(
                 content: Text('흰색계열의 옷입어'),
                );
                showDialog(
                  context: context,
                  builder: (BuildContext context) => dialog);
              } else if (rnd == 1) {
                AlertDialog dialog = AlertDialog(content: Text('붉은색계열의 옷'));
                showDialog(
                  context: context,
                  builder: (BuildContext context) => dialog);
              } else if (rnd == 2) {
                AlertDialog dialog = AlertDialog(content: Text('푸른색계열의 옷'));
                showDialog(
                  context: context,
                  builder: (BuildContext context) => dialog);
              } else if (rnd == 3) {
                AlertDialog dialog = AlertDialog(content: Text('남색계열의 옷'));
                showDialog(
                  context: context,
                  builder: (BuildContext context) => dialog);
              } else if (rnd == 4) {
                AlertDialog dialog = AlertDialog(content: Text('보라색계열의 옷'));
                showDialog(
                  context: context,
                  builder: (BuildContext context) => dialog);
              } else if (rnd == 5) {
                AlertDialog dialog = AlertDialog(content: Text('베이지색계열의 옷'));
                showDialog(
                  context: context,
                  builder: (BuildContext context) => dialog);
              } else {
                AlertDialog dialog = AlertDialog(content: Text('검은색계열의 옷'));
                showDialog(
                    context: context,
                    builder: (BuildContext context) => dialog);
              }
             }),
          ),
         ),
         Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
          child: Container(
           width: 320,
           height: 100,
           decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(30),
            color: Colors.white38,
           ),
           child: RaisedButton(
              color: Colors.transparent,
              child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Text('액세서리를 할까',
                  style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold))
               ],
              ),
              onPressed: () {
               setState(() {
                rnd = Random().nextInt(5);
               });
               if (rnd == 0) {
                  AlertDialog dialog = AlertDialog(
                   content: Text('목걸이 해'),
                  );
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => dialog);
                } else if (rnd == 1) {
                  AlertDialog dialog = AlertDialog(
                   content: Text('반지 해'),
                  );
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => dialog);
                } else if (rnd == 2) {
                  AlertDialog dialog = AlertDialog(
                   content: Text('팔찌 해'),
                  );
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => dialog);
                } else if (rnd == 3) {
                  AlertDialog dialog = AlertDialog(
                   content: Text('귀걸이 해'),
                  );
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => dialog);
                } else {
                  AlertDialog dialog = AlertDialog(
                   content: Text('하지마'),
                  );
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => dialog);
                 }
                }),
           ),
          ),
         Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 40),
          child: Container(
           width: 320,
           height: 100,
           decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(30),
            color: Colors.white38,
           ),
           child: RaisedButton(
              color: Colors.transparent,
              child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Text('옷 재질 설명',
                  style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold))
               ],
              ),
              onPressed: () {
               Navigator.push(context,
                 MaterialPageRoute(builder: (context) => material()));
             }),
          ),
         ),
       ]),
      );
     }
   }
