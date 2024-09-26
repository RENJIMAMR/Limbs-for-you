import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:carify_clone_two/ui/widgets/short_des_container_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';
import '../../tools/screen_size.dart';
import 'search_viewmodel.dart';

class SearchView extends StatelessWidget {
  SearchView({Key? key, required this.username}) : super(key: key);
  String username;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchViewmodel>.reactive(
      // onModelReady: (model) => model.startTimer(),
      builder: (context, model, child) {
        return Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Assets.images.backgroundImageLFY
                        .image(fit: BoxFit.cover)
                        .image,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  'Popular Campanies',
                                  style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        offset: Offset(
                                            3.0, 3.0), // Position of the shadow
                                        blurRadius:
                                            8.0, // Softness of the shadow
                                        color: const Color.fromARGB(
                                                255, 200, 239, 249)
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
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ShortDesContainerCard(),
                          ShortDesContainerCard(),
                          ShortDesContainerCard(),
                          ShortDesContainerCard(),
                          ShortDesContainerCard(),
                          ShortDesContainerCard(),
                          ShortDesContainerCard(),
                        ]),
                  ),
                )));
      },
      viewModelBuilder: () => SearchViewmodel(),
    );
  }
}
