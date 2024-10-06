import 'dart:async';

import 'package:carify_clone_two/app/app.router.dart';
import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:carify_clone_two/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../app/utils.dart';

class SearchViewmodel extends BaseViewModel {
  SearchViewmodel();
  // void logout() {
  //   navigationService.pushNamedAndRemoveUntil(Routes.loginView);
  // }

  buildCarouselIndicator({required int currentpage}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 5; i++)
          Container(
            height: i == currentpage ? 15 : 12,
            width: i == currentpage ? 15 : 12,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: i == currentpage
                  ? Palette.greyMain
                  : Palette.greyMain.withOpacity(.5),
              shape: BoxShape.circle,
            ),
          ),
      ],
    );
    notifyListeners();
  }

  onNavToDetailing() {
    navigationService.navigateTo(Routes.itemDetailingScreenView);
  }

  onPageChanged({required currentpage}) {}
  onNavToCompanyDetailing() {
    navigationService.navigateTo(Routes.companyDetailingScreenView);
  }
}
