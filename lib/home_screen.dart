import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'question.dart';

class HomeScreen extends StatefulWidget {



  HomeScreen({Key key }) : super(key:key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Question> question = [


    Question('Some ..... are actually allergic to humans', true,true,true,true),
    Question('You can lead a cow down stairs but not up stairs.', false,false,false,true),
    Question('Approximately one quarter of human bones are in the feet.', true,false,false,true),
    Question('A slug\'s blood is green.', true,false,false,true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true,false,false,true),
    Question('It is illegal to pee in the Ocean in Portugal.', true,false,false,true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false,false,false,true),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true,false,false,true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false,false,false,true),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true,false,false,true),
    Question('Google was originally called \"Backrub\".', true,false,false,true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true,false,false,true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true,false,false,true),
  ];

  int count=0;
  final tickIcon=Icon(Icons.check,color:Colors.green);
  final crossIcon=Icon(Icons.check,color: Colors.green);

int correct=0;
int incorrect=0;

List<Widget> iconsList=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ////
              ////Question Text
              ////

              SizedBox(height: 150,),

              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5,top: 3,bottom: 10),
                child: Text(
                  question[count].text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),

                ),
              ),

              SizedBox(height: 20),

              Text(
                'Correct: $correct, Incorrect:$incorrect',
                style: TextStyle(color: Colors.blueAccent),
              ),

              Spacer(),
              //sizedBox(height:330),

              ////
              ////True Button
              ////

              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5,top: 3,bottom: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(

                      primary: Colors.blueAccent,
                      padding: const EdgeInsets.only(top: 20, bottom: 20)),
                  onPressed: () {
                    if (question[count].answer == true) {
                      ////Correct Answer
                      iconsList.add(tickIcon);
                      correct++;
                      print('correct Answer');
                    } else {
                      ////Incorrect;
                      iconsList.add(crossIcon);
                      incorrect++;
                      print('Incorrect Answer');
                    }
                    count++;
                    setState(() {});
                  },
                  child: Text('CATS'),
                ),
              ),

              ////
              ////False Button
              ////

              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5,top: 3,bottom: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                  ),
                  onPressed: () {
                    if (question[count].answer == false) {
                      /// Correct Answer
                      iconsList.add(tickIcon);
                      correct++;
                      print('Correct answer');
                    } else {
                      /// Incorrect answer
                      iconsList.add(crossIcon);
                      incorrect++;
                      print('Incorrect answer');
                    }
                    count++;
                    setState(() {});
                  },
                  child: Text('Dogs'),
                ),
              ),

              ////Elevated Button 03

              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5,top: 3,bottom: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                  ),
                  onPressed: () {
                    if (question[count].answer == false) {
                      /// Correct Answer
                      iconsList.add(tickIcon);
                      correct++;
                      print('Correct answer');
                    } else {
                      /// Incorrect answer
                      iconsList.add(crossIcon);
                      incorrect++;
                      print('Incorrect answer');
                    }
                    count++;
                    setState(() {});
                  },
                  child: Text('Lion'),
                ),
              ),


              ////Elevated Button 04

              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5,top: 3,bottom: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                  ),
                  onPressed: () {
                    if (question[count].answer == false) {
                      /// Correct Answer
                      iconsList.add(tickIcon);
                      correct++;
                      print('Correct answer');
                    } else {
                      /// Incorrect answer
                      iconsList.add(crossIcon);
                      incorrect++;
                      print('Incorrect answer');
                    }
                    count++;
                    setState(() {});
                  },
                 child: Text('None'),
               ),
              ),
              SizedBox(height: 10),


              ////
              ////Row of Tick and Cross Icons
              ////

              Row(
                children: iconsList,
              ),
            ],
          ),
        ));
  }
}


//// MYAPP:
////   Homescreen
////   Text
////    Button1
////    button2
////     Tick and cross icons
////


