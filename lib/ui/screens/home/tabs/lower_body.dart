import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:limbs_for_you/global_widgets/container_card.dart';
import 'package:limbs_for_you/utils/constants/color_constants.dart';
import 'package:limbs_for_you/view/dummydb.dart';

class LowerBody extends StatelessWidget {
  const LowerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ContainerCard(title: 'Hand Knee Joint'),
              ContainerCard(title: 'Palm'),
              ContainerCard(title: 'Hand Fingers'),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        CarouselSlider(
            items: List.generate(
              4,
              (index) => Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: ColorConstants.themeClr,
                  borderRadius: BorderRadius.circular(20),
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
              color: ColorConstants.whiteMain,
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
                        AssetImage(Dummydb.CompanyList[index]['image']),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    Dummydb.CompanyList[index]['name'],
                    style: TextStyle(
                        fontSize: 15,
                        color: ColorConstants.whiteMain,
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
    );
  }
}
