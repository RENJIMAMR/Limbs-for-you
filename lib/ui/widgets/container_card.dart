import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 17,
        ),
        height: 50,
        // width: 180,
        decoration: BoxDecoration(
            color: Palette.whiteMain.withOpacity(.4),
            borderRadius: BorderRadiusDirectional.circular(13)),
        child: Center(
          child: Text(
            title,
            maxLines: 2,
            style: TextStyle(
                color: Palette.blackMain,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
