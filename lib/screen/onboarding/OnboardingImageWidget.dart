import 'package:expenses_tracker/provider/GeneralProvider.dart';
import 'package:expenses_tracker/constant/ConstantAssetsName.dart';
import 'package:expenses_tracker/constant/ConstantColor.dart';
import 'package:expenses_tracker/constant/ConstantText.dart';
import 'package:expenses_tracker/utils/GeneralWidget.dart';
import 'package:expenses_tracker/utils/HelperFunction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingImageWidget extends ConsumerStatefulWidget {
  const OnboardingImageWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<OnboardingImageWidget> createState() => OnboardingImageWidgetState();
}

class OnboardingImageWidgetState extends ConsumerState<OnboardingImageWidget> {

  List<String> ImageOnboarding = [
    ConstantAssetsName.icOnboarding1,
    ConstantAssetsName.icOnboarding2,
    ConstantAssetsName.icOnboarding3,
  ];

  List<String> TitleOnboarding = [
    ConstantText.onboardingTitle1,
    ConstantText.onboardingTitle2,
    ConstantText.onboardingTitle3,
  ];

  List<String> DescOnboarding = [
    ConstantText.onboardingDesc1,
    ConstantText.onboardingDesc2,
    ConstantText.onboardingDesc3,
  ];

  @override
  Widget build(BuildContext context) {
    final selectedOnboard = ref.watch(OnboardingSelectedProvider);
    final updateSelectedOnboard = ref.read(OnboardingSelectedProvider.notifier);

    return Column(
      children: [
        ConstrainedBox(
            constraints:BoxConstraints.loose(Size(MediaQuery.of(context).size.width, 480)),
            child:  Swiper(
              itemBuilder: (BuildContext context,int index){
                return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child:
                    Column(
                      children: [
                        SvgPicture.asset(ImageOnboarding[selectedOnboard]),
                        TextTitle1(TitleOnboarding[selectedOnboard], HexColor(ConstantColor.dark75),TextAlign.center, 10),
                        EmptySeparator(17, 0, 0, 0),
                        TextRegular1(DescOnboarding[selectedOnboard],HexColor(ConstantColor.light20), TextAlign.center, 10),

                      ],
                    )
                );
              },
              onIndexChanged: (index) async {
                updateSelectedOnboard.state = index;
              },
              itemCount: DescOnboarding.length,
            )
        ),
        AnimatedSmoothIndicator(
          activeIndex: selectedOnboard,
          count:  DescOnboarding.length,
          effect:  ScrollingDotsEffect(
            activeDotScale: 2,
            dotWidth:  8.0,
            dotHeight:  8.0,
            spacing:  16.0,
            dotColor: HexColor( ConstantColor.violet20),
              activeDotColor:  HexColor( ConstantColor.violet100),
          ),
        )
      ],
    );
  }
}
