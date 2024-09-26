import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:carify_clone_two/ui/widgets/container_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';
import '../../tools/screen_size.dart';
import 'welcome_viewmodel.dart';

class WelcomeView extends StatelessWidget {
  WelcomeView({Key? key, required this.username}) : super(key: key);
  String username;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeViewmodel>.reactive(
      // onModelReady: (model) => model.startTimer(),
      builder: (context, model, child) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        Assets.images.limbs8.image(fit: BoxFit.cover).image)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  "Your Future, Your",
                  style: TextStyle(
                      color: Palette.whiteMain,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Choice -",
                  style: TextStyle(
                      color: Palette.whiteMain,
                      fontSize: 70,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Expanded(
                      child: Text(
                        'Select a limb that gives you back your freedom.',
                        maxLines: 2,
                        style: TextStyle(
                          color: Palette.whiteMain,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => BottomNavBarScreen(),
                      //     ));
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 300,
                        ),
                        Text(
                          'Limbs Of Future Welcomes You',
                          maxLines: 2,
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                offset:
                                    Offset(3.0, 3.0), // Position of the shadow
                                blurRadius: 5.0, // Softness of the shadow
                                color: const Color.fromARGB(255, 200, 239, 249)
                                    .withOpacity(0.5), // Shadow color
                              ),
                            ],
                            color: Palette.whiteMain,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ContainerCard(title: 'Begin Your Journey')
                      ],
                    ),
                  ),
                ])
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => WelcomeViewmodel(),
    );
  }
}
