import 'package:carify_clone_two/app/app.router.dart';
import 'package:carify_clone_two/app/utils.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LowerBodyViewmodel extends BaseViewModel {
  onNavToDetailing() {
    navigationService.navigateTo(Routes.itemDetailingScreenView);
  }

  onNavToListing() {
    navigationService.navigateTo(Routes.prosthesisListingScreenView);
  }

  onPop() {
    navigationService.popUntil(
      (route) => false,
    );
  }
}
