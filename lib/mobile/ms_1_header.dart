import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../widgets/social_profiles.dart';

class MS1Header extends StatelessWidget {
  const MS1Header({Key? key}) : super(key: key);

  List<Widget> headerData() {
    return [
      const SizedBox(height: 40.0),
      Image.asset(
        'assets/images/logo.png',
        height: 250.0,
        width: 250.0,
      ),
      const SizedBox(height: 40.0),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          helloWorld(),
          animatedTypingName(),
          SelectableText(
            DataValues.headerTitle,
            style: AppThemeData.lightTheme.textTheme.titleLarge,
            textAlign: TextAlign.center,
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
        totalRepeatCount:1,
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
      height: 200,
      child: DefaultTextStyle(
        style: AppThemeData.lightTheme.textTheme.displayMedium!,
        child: AnimatedTextKit(
          totalRepeatCount:1,
          animatedTexts: [
            TypewriterAnimatedText(
              DataValues.headerName,
              textAlign: TextAlign.center,
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
        padding: const EdgeInsets.only(bottom: 40.0),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: headerData(),
            ),
            const SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}
