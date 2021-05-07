import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultScreen extends StatelessWidget {
  final    String gender;
  final     double result;
  final     int age;

  ResultScreen(
      this.gender,
      this.result,
      this.age);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo.shade600,
        title: Text("Bmi Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender : $gender",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text(
              "Result : $result",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text(
              "Age : $age",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
