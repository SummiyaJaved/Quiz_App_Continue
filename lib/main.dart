import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'home_screen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: HomeScreen(),
    );
  }
}



// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key key})  : super(key: key);}
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//
//           body: Column(
//
//             children: [
//
//             Text(
//               'Correct: $correct,Incorrect: $incorrect',
//               style: TextStyle(color: Colors.white),
//
//             ),
//               Spacer(),
//               //SizedBox(height:330),
//
//
//               ////
//               ////True Button
//               ////
//
//               Padding(
//                 padding: const EdgeInsets.only(left: 5, right: 5),
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       primary: Colors.green,
//                       padding: EdgeInsets.only(top: 20, bottom: 20),),
//                   onPressed: () {
//                     if(questions[count].answer == true) {
//     ////Correct Answer
//
//     iconsList.add(tickIcon);
//     correct++;
//
//     print('correct answer');
//     }
//                     else {
//
//     ////Incorrect
//     iconsList.add(crossIcon);
//     incorrect++;
//     print('incorrect Answer');
//     }
//                     count++;
//                     setState(() {}) ;
//
//                   },
//                   child: Text('TRUE'),
//
//                 ),
//               ),
//
//
//               ////
//               ////False Button
//               ////
//
//               Padding(
//                 padding: const EdgeInsets.only(left: 5, right: 5),
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       primary: Colors.red,
//                       padding: EdgeInsets.only(top: 20, bottom: 20),),
//                   onPressed: () {
//                     if(questions[count].answer == false) {
//                       ////Correct Answer
//
//                       iconsList.add(tickIcon);
//                       correct++;
//
//                       print('correct answer');
//                     }
//                     else {
//
//                       ////Incorrect answer
//                       iconsList.add(crossIcon);
//                       incorrect++;
//                       print('incorrect Answer');
//                     }
//                     count++;
//                     setState(() {}) ;
//
//                   },
//                   child: Text('FALSE'),
//
//                 ),
//               ),
//
//
//               SizedBox(height: 10),
//
//
//             ////
//     //// Row of Tick and Cross Icons
//     ////
//
//     Row(
//       children: iconsList,
//     ),
//     ],
//           ),
//
//         )
//               );
//
//
//
//
//
//
// // MyApp
// // Home Screen
// // Text
// //Button 1
// //Button 2
// //Tick and Cross Icons
//
//
//
//
//
//
//
//





