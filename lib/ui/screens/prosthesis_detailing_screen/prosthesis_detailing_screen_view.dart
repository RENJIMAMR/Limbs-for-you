import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:carify_clone_two/constants/assets.gen.dart';
import 'package:carify_clone_two/ui/screens/prosthesis_detailing_screen/prosthesis_detailing_screen_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stacked/stacked.dart';

class ProsthesisDetailingScreenView extends StatelessWidget {
  const ProsthesisDetailingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ProsthesisDetailingScreenViewmodel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'All',
                style: TextStyle(
                    shadows: [
                      Shadow(offset: Offset(0, -8), color: Colors.black)
                    ],
                    // textBaseline: TextBaseline.values,
                    decoration: TextDecoration.underline,
                    decorationThickness: 4,
                    color: Palette.transparent,
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
            ),
            body: MasonryGridView.builder(
              itemCount: 5,
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) => Padding(
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
          );
        });
  }
}
