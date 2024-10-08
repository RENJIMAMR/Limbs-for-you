import 'package:carify_clone_two/app/app.router.dart';
import 'package:carify_clone_two/app/utils.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RegistrationScreenViewmodel extends BaseViewModel {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController unameController = TextEditingController();
  TextEditingController pass1Controller = TextEditingController();
  TextEditingController pass2Controller = TextEditingController();

  void registration() {
    if (formkey.currentState!.validate()) {
      navigationService.navigateTo(Routes.loginView);
    }
  }

  void login() {
    if (formkey.currentState!.validate()) {
      navigationService.navigateTo(Routes.loginView);
    }
  }
}
