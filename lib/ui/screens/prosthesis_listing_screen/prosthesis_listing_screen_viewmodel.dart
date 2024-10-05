import 'package:carify_clone_two/app/app.router.dart';
import 'package:carify_clone_two/app/utils.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProsthesisListingingScreenViewmodel extends BaseViewModel {
  ProsthesisListingingScreenViewmodel();
  onPop() {
    navigationService.back();
  }

  onNavToDetailing() {
    navigationService.navigateTo(Routes.itemDetailingScreenView);
  }
}
