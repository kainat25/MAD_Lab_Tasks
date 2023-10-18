import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<User?> signUp(String email, String password) async {
    try {
      final UserCredential userCredential =
          await firebaseAuth.createUserWithEmailAndPassword(
              //when work with intrnet use await
              email: email,
              password: password);
      return userCredential.user;
    } catch (e) {
      print(e);
    }
  }

  Future<User?> signIn(String email, String password) async {
    try {
      final UserCredential userCredential =
          await firebaseAuth.signInWithEmailAndPassword(
              //when work with intrnet use await
              email: email,
              password: password);
      return userCredential.user;
    } catch (e) {
      print(e);
    }
  }

  signOut() async {
    await firebaseAuth.signOut();
  }
}
