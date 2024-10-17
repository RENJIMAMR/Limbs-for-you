import 'package:carify_clone_two/app/app.router.dart';
import 'package:carify_clone_two/app/utils.dart';
import 'package:stacked/stacked.dart';

class SavedScreenViewModel extends BaseViewModel {
  SavedScreenViewModel();
  onNavToDetailing() {
    navigationService.navigateTo(Routes.itemDetailingScreenView);
  }
}
