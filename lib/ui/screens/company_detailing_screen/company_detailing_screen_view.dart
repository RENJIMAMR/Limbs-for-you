import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:carify_clone_two/constants/assets.gen.dart';
import 'package:carify_clone_two/ui/screens/company_detailing_screen/company_detailing_screen_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CompanyDetailingScreenView extends StatelessWidget {
  const CompanyDetailingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CompanyDetailingScreenViewmodel(),
      builder: (context, viewModel, child) => Scaffold(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
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
                      ),
                    ),
                    Text(
                      'Company Name',
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
                    Spacer(),
                    Icon(
                      Icons.search_rounded,
                      color: Palette.whiteMain,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'About:',
                  style: TextStyle(
                      shadows: [
                        Shadow(
                          offset: Offset(3.0, 3.0), // Position of the shadow
                          blurRadius: 8.0, // Softness of the shadow
                          color: const Color.fromARGB(255, 200, 239, 249)
                              .withOpacity(0.5), // Shadow color
                        ),
                      ],
                      color: Palette.whiteMain,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  maxLines: 50,
                  textAlign: TextAlign.justify,
                  'Description sdfghjk dfghjkl dfghjkl fghjkl fghjkh fgiih hihg ghiuytgh uyghjyg ghjjhg yuih ',
                  style: TextStyle(color: Palette.whiteMain, fontSize: 15),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  maxLines: 50,
                  textAlign: TextAlign.justify,
                  'Contact:',
                  style: TextStyle(
                      shadows: [
                        Shadow(
                          offset: Offset(3.0, 3.0), // Position of the shadow
                          blurRadius: 8.0, // Softness of the shadow
                          color: const Color.fromARGB(255, 200, 239, 249)
                              .withOpacity(0.5), // Shadow color
                        ),
                      ],
                      color: Palette.whiteMain,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  maxLines: 50,
                  textAlign: TextAlign.justify,
                  'Rating:',
                  style: TextStyle(color: Palette.whiteMain, fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
