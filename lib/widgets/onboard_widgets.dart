import 'package:akabin_demo/screens/login_screen.dart';
import 'package:flutter/material.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  // ignore: prefer_typing_uninitialized_variables
  final image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 300,
        ),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 20),
        Text(
          description,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.black54),
        ),
        const Spacer(),
      ],
    );
  }
}

class OnboardButtons extends StatelessWidget {
  const OnboardButtons({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      _pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                    )),
              ),
              const SizedBox(width: 10),
              SizedBox(
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease);
                    },
                    child: const Icon(
                      Icons.arrow_forward,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 60,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ));
                },
                child: const Icon(
                  Icons.person,
                )),
          ),
        ],
      ),
    );
  }
}
