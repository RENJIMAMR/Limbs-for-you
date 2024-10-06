import 'package:carify_clone_two/ui/screens/bottom_nav_bar/bottom_nav_bar_view.dart';
import 'package:carify_clone_two/ui/screens/company_detailing_screen/company_detailing_screen_view.dart';
import 'package:carify_clone_two/ui/screens/company_list/company_list_view.dart';
import 'package:carify_clone_two/ui/screens/favorite_screen/favorite_screen_view.dart';
import 'package:carify_clone_two/ui/screens/home/home_view.dart';

import 'package:carify_clone_two/ui/screens/item_detailing_screen/item_detailing_screen_view.dart';

import 'package:carify_clone_two/ui/screens/prosthesis_listing_screen/prosthesis_listing_screen_view.dart';
import 'package:carify_clone_two/ui/screens/search/search_view.dart';
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
    MaterialRoute(page: HomeView),
    MaterialRoute(page: CompanyListView),
    MaterialRoute(page: SearchView),
    MaterialRoute(page: ProsthesisListingScreenView),
    MaterialRoute(page: FavoriteScreenView),
    MaterialRoute(page: ItemDetailingScreenView),
    MaterialRoute(page: CompanyDetailingScreenView),
  ],
  dependencies: [
    LazySingleton(classType: ApiService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
  ],
)
class AppSetup {}
