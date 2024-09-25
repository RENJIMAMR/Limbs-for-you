import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';
import '../../tools/screen_size.dart';
import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      // onModelReady: (model) => model.startTimer(),
      builder: (context, model, child) {
        return Scaffold(
            body: Form(
          key: model.formkey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'Login',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  validator: (value) {
                    if (model.unameController.text != null &&
                            model.unameController.text.isNotEmpty &&
                            model.unameController.text.contains('@gmail') ||
                        model.unameController.text.contains('.in')) {
                      return null;
                    } else {
                      return 'Enter Valid Email';
                    }
                  },
                  controller: model.unameController,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (model.passController.text != null &&
                        model.passController.text.isNotEmpty &&
                        model.passController.text.length >= 5) {
                      return null;
                    } else {
                      return 'Enter Valid Email';
                    }
                  },
                  controller: model.passController,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget Password?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      model.login(); 
                    },
                    child: Text('Login'))
              ],
            ),
          ),
        ));
      },
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
