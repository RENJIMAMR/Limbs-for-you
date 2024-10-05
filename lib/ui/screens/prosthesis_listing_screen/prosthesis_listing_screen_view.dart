import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:carify_clone_two/constants/assets.gen.dart';
import 'package:carify_clone_two/ui/screens/prosthesis_listing_screen/prosthesis_listing_screen_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stacked/stacked.dart';

class ProsthesisListingScreenView extends StatelessWidget {
  const ProsthesisListingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ProsthesisListingingScreenViewmodel(),
        builder: (context, viewModel, child) {
          return Scaffold(
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                backgroundColor: Palette.transparent,
                centerTitle: true,
                leading: Icon(
                  Icons.arrow_back_ios,
                  color: Palette.whiteMain,
                ),
                title: Text(
                  'All',
                  style: TextStyle(
                    shadows: [
                      Shadow(
                        offset: Offset(3.0, 3.0), // Position of the shadow
                        blurRadius: 8.0, // Softness of the shadow
                        color: const Color.fromARGB(255, 200, 239, 249)
                            .withOpacity(0.5), // Shadow color
                      ),
                    ],
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Palette.whiteMain,
                  ),
                ),
              ),
              body: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage(Assets.images.backgroundImageLFY.path),
                        fit: BoxFit.cover)),
                child: MasonryGridView.builder(
                  itemCount: 5,
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      viewModel.onNavToDetailing();
                    },
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset(Assets.images.limbs3.path)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.more_horiz,
                                color: Palette.blackMain,
                                size: 25,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ));
        });
  }
}
