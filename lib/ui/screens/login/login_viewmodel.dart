import 'package:carify_clone_two/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../app/utils.dart';

class LoginViewModel extends BaseViewModel {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController unameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  void login() {
    if (formkey.currentState!.validate()) {
      navigationService.navigateTo(Routes.bottomNavBarView);
      //     arguments: HomeViewArguments(username: unameController.text));
    }
  }

  void signup() {
    navigationService.navigateTo(Routes.registrationScreenView);
  }
}
