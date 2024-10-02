import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:carify_clone_two/ui/widgets/short_des_container_card.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';
import '../../tools/screen_size.dart';
import 'search_viewmodel.dart';

class SearchView extends StatelessWidget {
  int currentpage = 0;
  SearchView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchViewmodel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.backgroundImageLFY.path),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Carousel slider
                    Stack(
                      children: [
                        CarouselSlider(
                          items: List.generate(
                            5,
                            (index) => Container(
                              width: MediaQuery.sizeOf(context).width,
                              height: 400,
                              decoration: BoxDecoration(
                                color: Palette.blueShadow,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        textAlign: TextAlign.center,
                                        'Profile',
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Palette.whiteMain,
                                        ),
                                      ),
                                      Text(
                                        textAlign: TextAlign.center,
                                        'title',
                                        maxLines: 4,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Palette.whiteMain,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          options: CarouselOptions(
                              aspectRatio: 2,
                              viewportFraction: 1,
                              padEnds: false,
                              enlargeCenterPage: true,
                              height: 350,
                              pauseAutoPlayOnTouch: true,
                              initialPage: 0,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 2),
                              onPageChanged: (value, _) {
                                currentpage = value;
                              }),
                        ),
                        SizedBox(height: 30),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 25, left: 8, right: 8),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide.none,
                              ),
                              fillColor: Palette.whiteMain,
                              filled: true,
                              hintText: 'Search',
                              prefixIconColor: Palette.greyMain,
                              suffixIconColor: Palette.greyMain,
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 8),
                                child: Icon(Icons.search),
                              ),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 8),
                                child: Icon(Icons.camera_alt_rounded),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    model.buildCarouselIndicator(currentpage: currentpage),
                    SizedBox(height: 30),
                    Text(
                      'In Offer',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Palette.whiteMain),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 240,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: InkWell(
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (context, index) => Stack(
                              children: [
                                Container(
                                  height: 200,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    color: Palette.blueMain,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Positioned(
                                  top: 175,
                                  right: 33,
                                  child: CircleAvatar(
                                    radius: 22,
                                    backgroundColor: Palette.whiteMain,
                                    child: CircleAvatar(
                                      radius: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            separatorBuilder: (context, index) =>
                                SizedBox(width: 10),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Cosmetics for you',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Palette.whiteMain),
                      ),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics:
                          NeverScrollableScrollPhysics(), // Prevent conflicts
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      itemBuilder: (context, index) => Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.amberAccent,
                        ),
                        child: Center(
                          child: Text(
                            'title',
                            style: TextStyle(
                              color: Palette.whiteMain,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Popular Now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Palette.whiteMain),
                      ),
                    ),
                    SizedBox(height: 10),
                    // Wrapping GridView with SizedBox for a definite height
                    SizedBox(
                      height: 300,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                        ),
                        itemBuilder: (context, index) => Container(
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.amberAccent,
                          ),
                          child: Center(
                            child: Text(
                              'title',
                              style: TextStyle(
                                color: Palette.whiteMain,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => SearchViewmodel(),
    );
  }
}
