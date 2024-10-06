import 'package:carify_clone_two/app/app.router.dart';
import 'package:carify_clone_two/app/utils.dart';
import 'package:stacked/stacked.dart';

class UpperbodyViewmodel extends BaseViewModel {
  onNavToDetailing() {
    navigationService.navigateTo(Routes.itemDetailingScreenView);
  }

  onNavToListing() {
    navigationService.navigateTo(Routes.prosthesisListingScreenView);
  }

  int selectedCategoryIndex = 0;

  getCategoryindex(int index) {
    selectedCategoryIndex = index;

    notifyListeners();
  }

  onNavToCompanyDetailing() {
    navigationService.navigateTo(Routes.companyDetailingScreenView);
  }
}
