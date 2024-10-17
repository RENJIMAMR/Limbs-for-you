import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:carify_clone_two/constants/assets.gen.dart';
import 'package:carify_clone_two/ui/screens/bottom_nav_bar/bottom_nav_bar_viewmodel.dart';
import 'package:carify_clone_two/ui/screens/company_list/company_list_view.dart';
import 'package:carify_clone_two/ui/screens/saved_screen/saved_screen_view.dart';
import 'package:carify_clone_two/ui/screens/home/home_view.dart';
import 'package:carify_clone_two/ui/screens/help_screen/help_screen_view.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({super.key});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  Widget? _child;

  @override
  void initState() {
    _child = HomeView();
    super.initState();
  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = HomeView();
          break;
        case 1:
          _child = SavedScreenView();
          break;
        case 2:
          _child = CompanyListView();
          break;
        case 3:
          _child = HelpScreenView();
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: Duration(milliseconds: 500),
        child: _child,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => BottomNavBarViewmodel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            extendBody: true,
            body: _child,
            bottomNavigationBar: FluidNavBar(
              icons: [
                FluidNavBarIcon(
                  svgPath: Assets.images.houseWindow,
                  extras: {"label": "Home"},
                  backgroundColor: Palette.whiteMain,
                ),
                FluidNavBarIcon(
                  svgPath: Assets.images.radioButton,
                  extras: {"label": "Companies"},
                  backgroundColor: Palette.whiteMain,
                ),
                FluidNavBarIcon(
                  svgPath: Assets.images.bookmark,
                  extras: {"label": "Saved"},
                  backgroundColor: Palette.whiteMain,
                ),
                FluidNavBarIcon(
                  svgPath: Assets.images.handsBrain,
                  extras: {"label": "Help"},
                  backgroundColor: Palette.whiteMain,
                ),
              ],
              onChange: _handleNavigationChange,
              style: FluidNavBarStyle(
                iconSelectedForegroundColor: Palette.blackMain,
              ),
              scaleFactor: 1.5,
              defaultIndex: 1,
              itemBuilder: (icon, item) => Semantics(
                label: icon.extras!["label"],
                child: item,
              ),
            ),
          );
        });
  }
}
