import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:carify_clone_two/constants/assets.gen.dart';
import 'package:carify_clone_two/ui/screens/favorite_screen/favorite_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class FavoriteScreenView extends StatelessWidget {
  const FavoriteScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => FavoriteScreenViewModel(),
        builder: (context, viewModel, child) => Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              leading: Icon(
                Icons.arrow_back_ios,
                color: Palette.whiteMain,
              ),
              title: Text(
                'My Favourites',
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
              backgroundColor: Palette.transparent,
            ),
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
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            mainAxisExtent: 250,
                            crossAxisCount: 2),
                        itemCount: 8,
                        itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Palette.themeClr),
                        ),
                      ))),
            )));
  }
}
