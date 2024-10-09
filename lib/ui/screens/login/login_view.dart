import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';

import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
            body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.images.limbs3.image(fit: BoxFit.cover).image,
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(13),
            child: Form(
              key: model.formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      "Sign in to Your Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),

                  // email input fied
                  TextFormField(
                    controller: model.unameController,
                    validator: (value) {
                      if (model.unameController.text != null &&
                              model.unameController.text.isNotEmpty &&
                              model.unameController.text
                                  .contains('@gmail.com') ||
                          model.unameController.text.contains('.in')) {
                        return null;
                      } else {
                        return ' Enter a Valid Mail ID';
                      }
                    },
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      hintText: "Your Eamil Address",
                      hintStyle: TextStyle(
                          color: Palette.blackMain,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Palette.blackMain,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Palette.fontBlue,
                          )),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Palette.redMain,
                          )),
                    ),
                  ),
                  SizedBox(height: 20),
                  // password input field
                  TextFormField(
                    controller: model.passController,
                    validator: (value) {
                      if (model.passController.text != null &&
                          model.passController.text.isNotEmpty &&
                          model.passController.text.length >= 5 &&
                          model.passController.text.length <= 12) {
                        return null;
                      } else {
                        return ' Enter a Valid Password';
                      }
                    },
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        hintText: "Your Password",
                        hintStyle: TextStyle(
                            color: Palette.blackMain,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Palette.blackMain,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Palette.fontBlue,
                            )),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Palette.redMain,
                            )),
                        suffixIcon: Icon(
                          Icons.visibility_off_rounded,
                          color: Palette.blackMain,
                        )),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Palette.blackMain),
                              ),
                              child: Icon(
                                Icons.check,
                                size: 10,
                              ),
                            ),
                          ),
                          Text(
                            "Remember me",
                            style: TextStyle(
                              color: Palette.blackMain,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Forgot password",
                        style: TextStyle(
                          color: Palette.fontBlue,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 40),
                  InkWell(
                    onTap: () {
                      model.onLogin(context: context);
                      // Todo : write code  to navigate to bottom navBar screen on successful Login with registered credentials
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Palette.blueMain.withOpacity(.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: Palette.whiteMain,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Palette.blackMain,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            model.signup();

                            // Todo : write code  to navigate to registration screen
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Palette.fontBlue,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
      },
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
