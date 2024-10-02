import 'dart:async';

import 'package:carify_clone_two/app/app.router.dart';
import 'package:stacked/stacked.dart';

import '../../../app/utils.dart';

class SplashViewModel extends BaseViewModel {
  Timer? _timer;

  void startTimer() async {
    Future.delayed(Duration(seconds: 2)).then(
      (value) {
        navigationService.pushNamedAndRemoveUntil(Routes.welcomeView);
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
