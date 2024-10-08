import 'dart:async';

import 'package:carify_clone_two/app/app.router.dart';
import 'package:carify_clone_two/constants/assets.gen.dart';
import 'package:carify_clone_two/models/company_details_model.dart';
import 'package:carify_clone_two/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../app/utils.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewModel();
  onNavToCompanyDetailing() {
    navigationService.navigateTo(Routes.companyDetailingScreenView);
  }
}
