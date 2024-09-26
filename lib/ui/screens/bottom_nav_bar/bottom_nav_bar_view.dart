import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';
import '../../tools/screen_size.dart';
import 'bottom_nav_bar_viewmodel.dart';

class BottomNavBarView extends StatelessWidget {
  BottomNavBarView({Key? key, required this.username}) : super(key: key);
  String username;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomNavBarViewmodel>.reactive(
      // onModelReady: (model) => model.startTimer(),
      builder: (context, model, child) {
        return Scaffold(
            appBar: AppBar(
              title: Text(
                "Welcome ${model.username}",
                style: TextStyle(fontSize: 30),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      model.logou();
                    },
                    icon: Icon(Icons.power_settings_new_outlined))
              ],
            ),
            body: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
              ],
            ));
      },
      viewModelBuilder: () => BottomNavBarViewmodel(username: username),
    );
  }
}
