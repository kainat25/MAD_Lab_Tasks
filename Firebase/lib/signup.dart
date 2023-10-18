import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demoprojectfb/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
  TextEditingController ec = TextEditingController();
  TextEditingController pc = TextEditingController();
  TextEditingController nc = TextEditingController();
  TextEditingController ac = TextEditingController();
  final AuthService authService = AuthService();
  CollectionReference users = FirebaseFirestore.instance.collection("users");

  @override
  Widget build(BuildContext context) {
    signUp() async {
      final User? user = await authService.signUp(ec.text, pc.text);
      users.add({"name": nc.text, "age": ac.text, "email": ec.text});
      if (user != null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Sign up")));
      }
    }

    signIn() async {
      final User? user = await authService.signIn(ec.text, pc.text);
      if (user != null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Sign IN")));
      }
    }

    Future<void> signOut(BuildContext context) async {
      try {
        await authService.signOut();
        // ignore: use_build_context_synchronously
        Navigator.of(context).pop();
      } catch (e) {
        print('Sign-out failed: $e');
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: ec,
              decoration: InputDecoration(label: Text("Email")),
            ),
            TextFormField(
              controller: pc,
              obscureText: true,
              decoration: InputDecoration(label: Text("Password")),
            ),
            TextFormField(
              controller: nc,
              decoration: InputDecoration(label: Text("name")),
            ),
            TextFormField(
              controller: ac,
              decoration: InputDecoration(label: Text("age")),
            ),
            ElevatedButton(
                onPressed: () {
                  signIn();
                },
                child: Text("Sign In")),
            ElevatedButton(
                onPressed: () {
                  signUp();
                },
                child: Text("Sign Up")),
            ElevatedButton(
                onPressed: () {
                  signOut(context);
                },
                child: Text("Sign Out"))
          ],
        ),
      ),
    );
  }
}
