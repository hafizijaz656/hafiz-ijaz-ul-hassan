import 'package:flutter/material.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_sizes.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.backgroundAlt,
      padding: const EdgeInsets.symmetric(vertical: AppSizes.p32),
      child: Center(
        child: Text(
          '© ${DateTime.now().year} Hafiz Ijaz Ul Hassan. Built with Flutter precision & Web performance.',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppColors.textSecondary,
              ),
        ),
      ),
    );
  }
}
