import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';
import '../../tools/screen_size.dart';
import 'splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      onViewModelReady: (model) => model.startTimer(),
      builder: (context, model, child) {
        return Scaffold(
          body: Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    Assets.images.limbs4.path,
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Text(
                  'Limbs For You',
                  style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(10.0, 10.0),
                            blurRadius: 3.0,
                            color: Palette.blackMain),
                        Shadow(
                            offset: Offset(10.0, 10.0),
                            blurRadius: 8.0,
                            color: Palette.blueShadow),
                      ],
                      color: Palette.whiteMain),
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
