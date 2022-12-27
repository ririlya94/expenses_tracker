import 'package:expenses_tracker/constant/ConstantText.dart';
import 'package:expenses_tracker/screen/onboarding/OnboardingImageWidget.dart';
import 'package:expenses_tracker/utils/GeneralWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white),
        child: SafeArea(
          child: Column(
            children: [
              OnboardingImageWidget(),

              EmptySeparator(30, 0, 0, 0),
              ButtonPurpleBgWhiteText(ConstantText.SignUp,(){

              },gotpaddingLeftRight: true),

              EmptySeparator(16, 0, 0, 0),
              ButtonWhiteBgPurpleTextText(ConstantText.Login,(){

              },gotpaddingLeftRight: true)
            ],
          ),
        ),
      ),
    );

  }
}
