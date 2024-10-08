import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:carify_clone_two/ui/screens/home/tabs/lower_body_screen/lower_body_view.dart';
import 'package:carify_clone_two/ui/screens/home/tabs/upperbody_screen/upper_body_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';
import '../../tools/screen_size.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      // onModelReady: (model) => model.startTimer(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.images.backgroundImageLFY
                    .image(fit: BoxFit.cover)
                    .image,
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: DefaultTabController(
                length: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Text(
                            'Choose Your Prosthesis ',
                            style: TextStyle(
                              shadows: [
                                Shadow(
                                  offset: Offset(
                                      3.0, 3.0), // Position of the shadow
                                  blurRadius: 8.0, // Softness of the shadow
                                  color:
                                      const Color.fromARGB(255, 200, 239, 249)
                                          .withOpacity(0.5), // Shadow color
                                ),
                              ],
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: Palette.whiteMain,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.qr_code_scanner_outlined,
                            color: Palette.whiteMain,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    TabBar(
                      indicatorColor: Palette.whiteMain,
                      unselectedLabelColor: Palette.themeClr.withOpacity(.7),
                      labelColor: Palette.whiteMain,
                      dividerColor: Colors.transparent,
                      labelStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            'UPPER BODY',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'LOWER BODY',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      // Wrapping the TabBarView inside an Expanded widget to avoid layout issues
                      child: TabBarView(
                        children: [
                          UpperBodyView(),
                          LowerBodyView(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
