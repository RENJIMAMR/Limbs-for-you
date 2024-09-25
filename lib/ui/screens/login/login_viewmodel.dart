import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class LoginViewModel extends BaseViewModel {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController unameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  void login() {
    if (formkey.currentState!.validate()) {
      navigationService.navigateTo(Routes.homeView,
          arguments: HomeViewArguments(username: unameController.text));
    }
  }
}
