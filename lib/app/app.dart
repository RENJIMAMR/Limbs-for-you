import 'package:carify_clone_two/ui/screens/bottom_nav_bar/bottom_nav_bar_view.dart';
import 'package:carify_clone_two/ui/screens/home/home_view.dart';
import 'package:carify_clone_two/ui/screens/home/home_viewmodel.dart';
import 'package:carify_clone_two/ui/screens/login/login_view.dart';
import 'package:carify_clone_two/ui/screens/welcome/welcome_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/api_service.dart';

import '../ui/screens/splash/splash_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: WelcomeView),
    MaterialRoute(page: BottomNavBarView),
  ],
  dependencies: [
    LazySingleton(classType: ApiService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
  ],
)
class AppSetup {}
