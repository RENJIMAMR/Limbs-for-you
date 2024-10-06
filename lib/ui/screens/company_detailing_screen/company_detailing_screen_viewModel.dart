import 'package:carify_clone_two/app/app.router.dart';
import 'package:carify_clone_two/app/utils.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CompanyDetailingScreenViewmodel extends BaseViewModel {
  CompanyDetailingScreenViewmodel();
  onNavToCompanyDetailing() {
    navigationService.navigateTo(Routes.companyDetailingScreenView);
  }
}
