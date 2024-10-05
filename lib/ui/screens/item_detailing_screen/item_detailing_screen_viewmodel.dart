import 'package:carify_clone_two/app/utils.dart';
import 'package:stacked/stacked.dart';

class ItemDetailingScreenViewmodel extends BaseViewModel {
  ItemDetailingScreenViewmodel();
  onPop() {
    navigationService.back();
  }
}
