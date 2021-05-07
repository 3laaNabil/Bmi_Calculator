import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'ResulteScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color color = Colors.indigo.shade600;

  bool isMale = true;
  String gender = "Male" ;
  double height = 120;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade600,
        title: const Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                          gender = "Male";
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage("images/male.png"),
                              width: 90,
                              height: 90,
                              //size: 70,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color:
                                isMale ? Colors.red : Colors.indigo.shade600),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                          gender = "female" ;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage("images/female.png"),
                              width: 90,
                              height: 90,
                              //size: 70,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color:
                                !isMale ? Colors.red : Colors.indigo.shade600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.indigo.shade600),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "${height.round()}",
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                      Text(
                        "CM",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                  Slider(
                      value: height,
                      max: 220.0,
                      min: 90.0,
                      activeColor: Colors.white,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      })
                ],
              ),
            ),
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "${weight}",
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    heroTag: " weight--",
                                    child: Icon(Icons.remove),
                                    mini: true,
                                    backgroundColor: Colors.white12),
                                FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    heroTag: " weight++",
                                    child: Icon(Icons.add),
                                    mini: true,
                                    backgroundColor: Colors.white12)
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.indigo.shade600)),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "${age}",
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  heroTag: " age--",
                                  child: Icon(Icons.remove),
                                  mini: true,
                                  backgroundColor: Colors.white12,
                                ),
                                FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    heroTag: "age++",
                                    child: Icon(Icons.add),
                                    mini: true,
                                    backgroundColor: Colors.white12)
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.indigo.shade600)),
                  ),
                ],
              ),
            ),
          ),
          Container(
              width: double.infinity,
              color: Colors.red,
              child: ElevatedButton(
                onPressed: () {
                  double result = weight / pow(height / 100, 2);
                  print(result.round());

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>ResultScreen(gender , result, age)));
                },
                child: Text(
                  "CALCULATE ",
                  style: TextStyle(fontSize: 20.0),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    minimumSize: MaterialStateProperty.all(Size(50.0, 50.0))),
              ))
        ],
      ),
    );
  }
}
