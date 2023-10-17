import 'package:flutter/material.dart';
import 'package:sqlite/liststudent.dart';
import 'package:sqlite/searchstudent.dart';
import 'package:sqlite/addstudent.dart';

void main() {
  runApp(const StudentDatabaseApp());
}

class StudentDatabaseApp extends StatelessWidget {
  const StudentDatabaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Database App',
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/list_students': (context) => ListStudentsScreen(),
        '/add_student': (context) => AddStudentScreen(),
        '/search_students': (context) => SearchStudentsScreen(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Database App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list_students');
              },
              child: const Text('List Students'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/add_student');
              },
              child: const Text('Add Student'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/search_students');
              },
              child: const Text('Search Students'),
            ),
          ],
        ),
      ),
    );
  }
}
