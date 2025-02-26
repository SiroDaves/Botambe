import 'package:flutter/material.dart';

import '../../common/utils/constants/app_assets.dart';
import '../../common/widget/general/oval_bottom_clipper.dart';
import '../../core/navigator/route_names.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final Color kDarkBlueColor = const Color(0xFF053149);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var nextActionButton = GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, RouteNames.habitsChooser);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
          Center(
            child: SizedBox(
              width: 75,
              height: 75,
              child: CircularProgressIndicator(
                color: Colors.black,
                strokeWidth: 3,
                value: 0.3,
                backgroundColor: Colors.white.withValues(alpha: 0.3),
              ),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Stack(
        children: [
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              height: size.height / 2,
              color: Colors.black,
              child: Center(child: SizedBox()),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                const Text(
                  "We will help you to",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "make habits!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Image.asset(AppAssets.imgBikeGirl, height: 250),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "This app helps you to get rid of your bad habits and making useful ones to have a better life",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                const Spacer(),
                nextActionButton,
                const SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
