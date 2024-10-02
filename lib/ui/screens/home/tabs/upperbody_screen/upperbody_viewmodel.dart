import 'package:carify_clone_two/app/app.router.dart';
import 'package:carify_clone_two/app/utils.dart';
import 'package:stacked/stacked.dart';

class UpperbodyViewmodel extends BaseViewModel {
  onNav() {
    navigationService.navigateTo(Routes.prosthesisDetailingScreenView);
  }

  int selectedCategoryIndex = 0;

  getCategoryindex(int index) {
    selectedCategoryIndex = index;

    notifyListeners();
  }
}
