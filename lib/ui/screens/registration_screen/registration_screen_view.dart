import 'package:carify_clone_two/constants/app_colors.dart';
import 'package:carify_clone_two/constants/assets.gen.dart';
import 'package:carify_clone_two/ui/screens/registration_screen/registration_screen_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RegistrationScreenView extends StatelessWidget {
  const RegistrationScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => RegistrationScreenViewmodel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.images.limbs2.image(fit: BoxFit.cover).image,
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: viewModel.formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Text(
                        "Sign Up for Free",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      controller: viewModel.unameController,
                      validator: (value) {
                        if (viewModel.unameController.text != null &&
                                viewModel.unameController.text.isNotEmpty &&
                                viewModel.unameController.text
                                    .contains('@gmail.com') ||
                            viewModel.unameController.text.contains('.in')) {
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
                            color: Palette.whiteMain,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Palette.whiteMain,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Palette.blackMain,
                            )),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Palette.redMain)),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: viewModel.pass1Controller,
                      validator: (value) {
                        if (viewModel.pass1Controller.text != null &&
                            viewModel.pass1Controller.text.isNotEmpty &&
                            viewModel.pass1Controller.text.length >= 5 &&
                            viewModel.pass1Controller.text.length <= 12) {
                          return null;
                        } else {
                          return ' Enter a Valid Password';
                        }
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          hintText: "Your Password",
                          hintStyle: TextStyle(
                              color: Palette.whiteMain,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Palette.whiteMain,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Palette.blackMain,
                              )),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Palette.redMain,
                              )),
                          suffixIcon: Icon(
                            Icons.visibility_off_rounded,
                            color: Palette.whiteMain,
                          )),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: viewModel.pass2Controller,
                      validator: (value) {
                        if (viewModel.pass1Controller.text ==
                            viewModel.pass2Controller.text) {
                          return null;
                        } else {
                          return "Password does n't match";
                        }
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          hintText: "Confirm Your Password",
                          hintStyle: TextStyle(
                              color: Palette.whiteMain,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Palette.whiteMain,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Palette.blackMain,
                              )),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Palette.redMain,
                              )),
                          suffixIcon: Icon(
                            Icons.visibility_off_rounded,
                            color: Palette.whiteMain,
                          )),
                    ),
                    SizedBox(height: 370),
                    // registration_provider.isLoading
                    //     ? CircularProgressIndicator()
                    //     :
                    InkWell(
                      onTap: () {
                        viewModel.registration();
                        // Todo : write code  to navigate to login screen on successful registration
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Palette.blackMain.withOpacity(.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Palette.whiteMain,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            color: Palette.blackMain,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              viewModel.login();
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                color: Palette.whiteMain,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ))
                      ],
                    ),
                    // Spacer()
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
