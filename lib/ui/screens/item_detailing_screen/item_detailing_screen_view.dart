import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:carify_clone_two/constants/assets.gen.dart';
import 'package:carify_clone_two/ui/screens/item_detailing_screen/item_detailing_screen_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ItemDetailingScreenView extends StatelessWidget {
  const ItemDetailingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ItemDetailingScreenViewmodel(),
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Flexible(
                child: PageView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (context, index) => Container(
                    height: 310,
                    color: Palette.themeClr,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              InkWell(
                                  onTap: () {
                                    viewModel.onPop();
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Palette.whiteMain,
                                  )),
                              Spacer(),
                              Icon(
                                Icons.search,
                                color: Palette.whiteMain,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.favorite,
                                color: Palette.whiteMain,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(
                          color: Palette.whiteMain,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      maxLines: 8,
                      textAlign: TextAlign.justify,
                      'asdfghjklkjnbvcdcvbnm dfghjfghjkjhgfghj ndsdfghjkjhg dfghjkjhgfdsdtyui sdfghjhgfdfghj fghjddfghhgf asdfghjk sdfghjk sdfghj srtyu dfghjhgfd ',
                      style: TextStyle(
                        color: Palette.whiteMain,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '₹Price',
                      style: TextStyle(
                          color: Palette.whiteMain,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Rating And reviews',
                      style: TextStyle(
                        color: Palette.whiteMain,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ]),
          )),
    );
  }
}
