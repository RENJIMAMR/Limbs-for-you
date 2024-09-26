import 'dart:async';

import 'package:stacked/stacked.dart';

import '../../../app/utils.dart';

class SplashViewModel extends BaseViewModel {
  Timer? _timer;

  void startTimer() async {
    _timer = Timer(const Duration(seconds: 3), () async {
      // navigationService.navigateTo(Routes.);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
