import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../widgets/nav_bar.dart';
import '../widgets/social_profiles.dart';

class DS1Header extends StatelessWidget {
  const DS1Header({Key? key}) : super(key: key);

  List<Widget> headerData() {
    return [
      Image.asset(
        'assets/images/logo.png',
        height: 250.0,
        width: 250.0,
      ),
      const SizedBox(width: 60.0),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          helloWorld(),
          animatedTypingName(),
          SelectableText(
            DataValues.headerTitle,
            style: AppThemeData.lightTheme.textTheme.titleLarge,
          ),
          const SizedBox(height: 20.0),
          const SocialProfiles(),
        ],
      ),
    ];
  }

  helloWorld() {
    return DefaultTextStyle(
      style: AppThemeData.lightTheme.textTheme.headlineSmall!,
      child: AnimatedTextKit(
        totalRepeatCount: 1,
        animatedTexts: [
          WavyAnimatedText(
            DataValues.headerGreetings,
          ),
        ],
      ),
    );
  }

  animatedTypingName() {
    return SizedBox(
      width: 600,
      child: DefaultTextStyle(
        style: AppThemeData.lightTheme.textTheme.displayMedium!,
        child: AnimatedTextKit(
          totalRepeatCount:1,
          animatedTexts: [
            TypewriterAnimatedText(
              DataValues.headerName,
              speed: const Duration(milliseconds: 300),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/header_background.jpg",
          ),
          fit: BoxFit.cover, // cover, contain, fill, etc.
        ),
      ),
      child: Padding(
          padding: const EdgeInsets.only(top: 60.0, bottom: 40.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: headerData(),
              ),
              const SizedBox(height: 60.0),
              const DesktopNavBar(),
            ],
          )),
    );
  }
}
