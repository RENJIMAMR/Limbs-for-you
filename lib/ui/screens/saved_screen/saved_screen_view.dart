import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:carify_clone_two/constants/assets.gen.dart';
import 'package:carify_clone_two/ui/screens/saved_screen/saved_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SavedScreenView extends StatelessWidget {
  const SavedScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SavedScreenViewModel(),
        builder: (context, viewModel, child) => Scaffold(
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
              child: Column(children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        'My Favourites',
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              offset:
                                  Offset(3.0, 3.0), // Position of the shadow
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
                      Spacer(),
                      Icon(
                        Icons.favorite,
                        color: Palette.whiteMain,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 250,
                          crossAxisCount: 2),
                      itemCount: 8,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          viewModel.onNavToDetailing();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Palette.themeClr),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            )));
  }
}
