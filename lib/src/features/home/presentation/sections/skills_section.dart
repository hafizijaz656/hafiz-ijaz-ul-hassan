import 'package:flutter/material.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_content.dart';
import '../../../../constants/app_sizes.dart';
import '../../../../utils/app_utils.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding:  EdgeInsets.symmetric(
        vertical: AppUtils.isMobile(context) ? AppSizes.p4 : AppSizes.p64,
        horizontal: AppUtils.isMobile(context) ? AppSizes.p4 : AppSizes.p24,
      ),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: AppSizes.maxContentWidth),
          padding: const EdgeInsets.all(AppSizes.p48),
          decoration: BoxDecoration(
            color: AppColors.backgroundAlt,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 20,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                'Skill Proficiency',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
              ),
              const SizedBox(height: AppSizes.p8),
              Text(
                'Quantifying my expertise in core technologies',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppColors.textSecondary,
                    ),
              ),
              const SizedBox(height: AppSizes.p48),
              LayoutBuilder(
                builder: (context, constraints) {
                  final isDesktop = constraints.maxWidth > 800;
                  
                  // Split skills into two columns for desktop
                  final midPoint = (AppContent.skills.length / 2).ceil();
                  final leftSkills = AppContent.skills.sublist(0, midPoint);
                  final rightSkills = AppContent.skills.sublist(midPoint);

                  return isDesktop
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                children: leftSkills
                                    .map((skill) => Padding(
                                          padding: const EdgeInsets.only(bottom: AppSizes.p32),
                                          child: _SkillBar(item: skill),
                                        ))
                                    .toList(),
                              ),
                            ),
                            const SizedBox(width: AppSizes.p48),
                            Expanded(
                              child: Column(
                                children: rightSkills
                                    .map((skill) => Padding(
                                          padding: const EdgeInsets.only(bottom: AppSizes.p32),
                                          child: _SkillBar(item: skill),
                                        ))
                                    .toList(),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          children: AppContent.skills
                              .map((skill) => Padding(
                                    padding: const EdgeInsets.only(bottom: AppSizes.p32),
                                    child: _SkillBar(item: skill),
                                  ))
                              .toList(),
                        );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SkillBar extends StatelessWidget {
  const _SkillBar({required this.item});

  final SkillItem item;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: item.percentage),
      duration: const Duration(milliseconds: 1500),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.label,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                        letterSpacing: 1.0,
                      ),
                ),
                Text(
                  '${(value * 100).toInt()}%',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.p12),
            Stack(
              children: [
                Container(
                  height: 8,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      height: 8,
                      width: constraints.maxWidth * value,
                      decoration: BoxDecoration(
                        gradient: AppColors.primaryGradient,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
