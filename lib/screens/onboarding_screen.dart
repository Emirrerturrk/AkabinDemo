import 'package:akabin_demo/utils/images_strings.dart';
import 'package:akabin_demo/utils/strings.dart';
import 'package:akabin_demo/widgets/dot_indicator.dart';
import 'package:akabin_demo/widgets/onboard_widgets.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;

  int _pageIndex = 0;
  final int _firstPage = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: _firstPage);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                itemCount: demoData.length,
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemBuilder: (context, index) => OnboardContent(
                    image: demoData[index].image,
                    title: demoData[index].title,
                    description: demoData[index].description)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  demoData.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: DotIndicator(isActive: index == _pageIndex),
                      )),
            ],
          ),
          OnboardButtons(pageController: _pageController)
        ],
      ),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard(
      {required this.image, required this.title, required this.description});
}

final List<Onboard> demoData = [
  Onboard(
      image: AppImages.onBoardingImage1,
      title: AppTitles.onBoardingTitle1,
      description: AppDescription.onBoardingDescription1),
  Onboard(
      image: AppImages.onBoardingImage2,
      title: AppTitles.onBoardingTitle2,
      description: AppDescription.onBoardingDescription2),
  Onboard(
      image: AppImages.onBoardingImage3,
      title: AppTitles.onBoardingTitle3,
      description: AppDescription.onBoardingDescription3),
  Onboard(
      image: AppImages.onBoardingImage4,
      title: AppTitles.onBoardingTitle4,
      description: AppDescription.onBoardingDescription4)
];
