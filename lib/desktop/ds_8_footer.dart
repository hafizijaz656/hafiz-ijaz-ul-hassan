import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../theme/app_theme.dart';

class DS8Footer extends StatelessWidget {
  const DS8Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppThemeData.backgroundWhite,
      child: Column(
        children: [
          const Divider(color: AppThemeData.backgroundBlack),
          const SizedBox(height: 40),
          SelectableText(
            DataValues.appName,
            style: AppThemeData.lightTheme.textTheme.labelMedium,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SelectableText(
                DataValues.builtWith,
                style: AppThemeData.lightTheme.textTheme.labelMedium,
              ),
              const SizedBox(width: 5),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
