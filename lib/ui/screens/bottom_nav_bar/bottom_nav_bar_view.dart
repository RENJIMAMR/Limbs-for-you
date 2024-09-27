// import 'package:carify_clone_two/constants/app_colors.dart';
// import 'package:flutter/material.dart';
// import 'package:stacked/stacked.dart';

// import '../../../constants/assets.gen.dart';
// import '../../tools/screen_size.dart';
// import 'bottom_nav_bar_viewmodel.dart';

// class BottomNavBarView extends StatefulWidget {
//   BottomNavBarView({Key? key, required this.username}) : super(key: key);
//   String username;

//   @override
//   State<BottomNavBarView> createState() => _BottomNavBarViewState();
// }

// class _BottomNavBarViewState extends State<BottomNavBarView> {
//   late TabController _tabController;
//  void initState() {
//     _tabController =
//         TabController(length: 3, vsync: this); // Provide vsync from mixin
//   }

//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   TabController get tabController =>
//       _tabController; // Expose TabController if needed

//   @override
//   Widget build(BuildContext context) {
//     return ViewModelBuilder<BottomNavBarViewmodel>.reactive(
//       // onModelReady: (model) => model.startTimer(),
//       builder: (context, model, child) {
//         return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: TabBarView(
//         controller: _tabController,
//         children: [
//           HomeScreen(),
//           ListScreen(),
//           SearchScreen(),
//         ],
//       ),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.only(left: 16, right: 16, bottom: 15),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(12),
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 offset: Offset(5, 11),
//                 blurRadius: 24,
//                 color: Colors.black.withOpacity(.14),
//               ),
//               BoxShadow(
//                 offset: Offset(17, 41),
//                 blurRadius: 44,
//                 color: Colors.black.withOpacity(.12),
//               ),
//             ],
//           ),
//           child: TabBar(
//             controller: _tabController,
//             indicatorColor: Palette.themeClr,
//             unselectedLabelColor: Palette.greyMain,
//             labelColor: Palette.themeClr,
//             labelStyle:
//                 TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
//             dividerColor: Colors.transparent,
//             tabs: [
//               Tab(icon: Icon(Icons.home), text: "Home"),
//               Tab(icon: Icon(Icons.view_list), text: "Company"),
//               Tab(icon: Icon(Icons.search), text: "Search"),
//             ],
//           ),
//         ),
//       ),
//     );
//       },
//       viewModelBuilder: () => BottomNavBarViewmodel(),
//     );
//   }
// }
import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:carify_clone_two/ui/screens/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'bottom_nav_bar_viewmodel.dart';

class BottomNavBarView extends StatefulWidget {
  BottomNavBarView({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBarView> createState() => _HomeViewState();
}

class _HomeViewState extends State<BottomNavBarView>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 3, vsync: this); // Initialize TabController
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomNavBarViewmodel>.reactive(
      // onModelReady: (model) => model.startTimer(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: TabBarView(
            controller: _tabController,
            children: [
              HomeView(),
              // ListScreen(),
              // SearchScreen(),
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 15),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5, 11),
                    blurRadius: 24,
                    color: Colors.black.withOpacity(.14),
                  ),
                  BoxShadow(
                    offset: Offset(17, 41),
                    blurRadius: 44,
                    color: Colors.black.withOpacity(.12),
                  ),
                ],
              ),
              child: TabBar(
                controller: _tabController,
                indicatorColor: Palette.themeClr,
                unselectedLabelColor: Palette.greyMain,
                labelColor: Palette.themeClr,
                labelStyle:
                    TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                dividerColor: Colors.transparent,
                tabs: [
                  Tab(icon: Icon(Icons.home), text: "Home"),
                  Tab(icon: Icon(Icons.view_list), text: "Company"),
                  Tab(icon: Icon(Icons.search), text: "Search"),
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => BottomNavBarViewmodel(),
    );
  }
}
