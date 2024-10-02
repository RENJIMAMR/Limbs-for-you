import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:carify_clone_two/constants/assets.gen.dart';
import 'package:carify_clone_two/ui/screens/item_detailing_screen/item_detailing_screen_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ItemDetailingScreenView extends StatelessWidget {
  const ItemDetailingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(viewModelBuilder: () => ItemDetailingScreenViewmodel(), builder: (context, viewModel, child) =>  Scaffold(
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
                      Icon(Icons.arrow_back_ios,color: Palette.whiteMain,),

                      Spacer(),
                        Icon(
                        Icons.search,
                        color: Palette.whiteMain,
                      ),
                      SizedBox(width: 20,),
                      Icon(
                        Icons.favorite,
                        color: Palette.whiteMain,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                PageView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(height: 270,color: Palette.blueShadow,),),
                  
              ]),
            )),);
  }
}