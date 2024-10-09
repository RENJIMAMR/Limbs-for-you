import 'package:carify_clone_two/app/app.router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../app/utils.dart';

class LoginViewModel extends BaseViewModel {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController unameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void signup() {
    navigationService.pushNamedAndRemoveUntil(Routes.registrationScreenView);
  }

  bool isLoading = false;
  onLogin({required BuildContext context}) async {
    isLoading = true;
    notifyListeners();
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: unameController.text, password: passController.text);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.green,
          content: Text('User Logged in Successfully')));
      navigationService.navigateTo(Routes.bottomNavBarView);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.green,
            content: Text('Invalid Credential')));
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
    isLoading = false;
    notifyListeners();
  }
}
