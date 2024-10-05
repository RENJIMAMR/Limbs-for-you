import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:carify_clone_two/dummydb.dart';
import 'package:carify_clone_two/ui/screens/home/tabs/lower_body_screen/lower_body_viewmodel.dart';
import 'package:carify_clone_two/ui/widgets/container_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LowerBodyView extends StatelessWidget {
  const LowerBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => LowerBodyViewmodel(),
        builder: (context, viewModel, child) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(
                    Dummydb.lowerBodyCategory.length,
                    (index) => InkWell(
                        onTap: () {
                          viewModel.onNavToListing();
                        },
                        child: ContainerCard(
                            title: Dummydb.lowerBodyCategory[index])),
                  )),
                ),
                SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                    items: List.generate(
                      4,
                      (index) => InkWell(
                        onTap: () {
                          viewModel.onNavToDetailing();
                        },
                        child: Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Palette.themeClr,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 1),
                    )),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Popular Companies',
                  style: TextStyle(
                      fontSize: 25,
                      color: Palette.whiteMain,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                CarouselSlider(
                    items: List.generate(
                      Dummydb.CompanyList.length,
                      (index) => Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage(Dummydb.CompanyList[index].imageUrl),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            Dummydb.CompanyList[index].name,
                            style: TextStyle(
                                fontSize: 15,
                                color: Palette.whiteMain,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    options: CarouselOptions(
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 4),
                        disableCenter: true,
                        padEnds: true,
                        height: 130,
                        aspectRatio: 3 / 4)),
              ],
            ));
  }
}
