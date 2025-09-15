import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../widgets/social_profiles.dart';

class MS1Header extends StatelessWidget {
  const MS1Header({Key? key}) : super(key: key);

  List<Widget> headerData() {
    return [
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
          SelectableText(
            DataValues.headerGreetings,
            style: AppThemeData.darkTheme.textTheme.headlineSmall,
          ),
          animatedTypingName(),
          SelectableText(
            DataValues.headerTitle,
            style: AppThemeData.darkTheme.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20.0),
          const SocialProfiles(),
        ],
      ),
    ];
  }

  animatedTypingName() {
    return SizedBox(
      height: 200,
      child: DefaultTextStyle(
        style: AppThemeData.darkTheme.textTheme.displayMedium!,
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TypewriterAnimatedText(
              DataValues.headerName,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemeData.backgroundBlack,
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
          )),
    );
  }
}
