import 'package:flutter/material.dart';

class DisplayData extends StatelessWidget {
  final String name;
  final String email;
  final String gender;
  final String birthDate;

  DisplayData({
    required this.name,
    required this.email,
    required this.gender,
    required this.birthDate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display Data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: $name'),
            Text('Email: $email'),
            Text('Gender: $gender'),
            Text('Birth Date: $birthDate'),
          ],
        ),
      ),
    );
  }
}
