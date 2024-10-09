import 'package:carify_clone_two/app/app.router.dart';
import 'package:carify_clone_two/app/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RegistrationScreenViewmodel extends BaseViewModel {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController unameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool isLoading = false;
  onRegister({required BuildContext context}) async {
    isLoading = true;
    notifyListeners();
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: unameController.text,
        password: passController.text,
      );
      if (credential.user?.uid != null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.green,
            content: Text('User registered successfully')));
        navigationService.navigateTo(Routes.loginView);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
            content: Text('Pass word is too weak')));
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
            content: Text('The account already exists for that email.')));
      }
    } catch (e) {
      print(e);
    }
    isLoading = false;
    notifyListeners();
    // void registration() {
    //   if (formkey.currentState!.validate()) {
    //     navigationService.navigateTo(Routes.loginView);
    //   }
    // }
  }

  void login() {
    if (formkey.currentState!.validate()) {
      navigationService.pushNamedAndRemoveUntil(Routes.loginView);
    }
  }
}
