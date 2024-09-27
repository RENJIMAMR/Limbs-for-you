import 'dart:async';

import 'package:carify_clone_two/app/app.router.dart';
import 'package:carify_clone_two/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../app/utils.dart';

class WelcomeViewmodel extends BaseViewModel {
  WelcomeViewmodel();
  void navigate() {
    navigationService.navigateTo(Routes.bottomNavBarView);
  }
}
