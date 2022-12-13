import 'package:flutter/material.dart';
import 'package:school_prep/constants/color.dart';
import 'package:school_prep/pages/onboarding.dart';
import 'package:school_prep/router/router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(Duration.zero, () {
      navigate(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundK,
      body: Center(
        child: Image.asset(
          "asset/images/logo.png",
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}

void navigate(BuildContext? context) async {
  Future.delayed(Duration(seconds: 2), () {
    PageNavigator(ctx: context).clearStack(OnboardingScreen());
  });
}


// Image.asset(
//           '/images/dna.png',
//           height: 140,
//           width: 140,
//         ),
//       ),