import 'dart:async';

import 'package:carify_clone_two/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';
import '../../../app/utils.dart';

class HomeViewModel extends BaseViewModel {
  late String username;
  HomeViewModel({required this.username});
  void logou() {
    navigationService.pushNamedAndRemoveUntil(Routes.loginView);
  }
}
