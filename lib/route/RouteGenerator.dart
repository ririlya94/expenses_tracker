import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:expenses_tracker/common.dart';
import 'package:expenses_tracker/screen/OnboardingScreen.dart';
import 'package:expenses_tracker/constant/ConstantColor.dart';
import 'package:expenses_tracker/constant//ConstantText.dart';
import 'package:expenses_tracker/utils/GeneralWidget.dart';
import 'package:expenses_tracker/utils/HelperFunction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => AnimatedSplashScreen.withScreenFunction(
              splash: Center(
                  child: TextBold(ConstantText.AppNameTitle, Colors.white, 56, TextAlign.center, 1)
              ),
              screenFunction: () async {
                return OnboardingScreen();
              },
              splashTransition: SplashTransition.fadeTransition,
              pageTransitionType: PageTransitionType.fade,
              duration: 1050,
              backgroundColor: HexColor(ConstantColor.violet100),
            )
        );
      default:
        return errorRoute();

    }
  }

  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
        ),
        body: Center(
          child: Text("ERROR"),
        ),
      );
    });
  }
}
