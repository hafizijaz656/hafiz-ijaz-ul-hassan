import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_sizes.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.backgroundAlt,
      padding: const EdgeInsets.symmetric(
        vertical: AppSizes.p64,
        horizontal: AppSizes.p24,
      ),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: AppSizes.maxContentWidth),
          padding: const EdgeInsets.all(AppSizes.p48),
          decoration: BoxDecoration(
            color: Colors.white,
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
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: AppColors.textSecondary),
              ),
              const SizedBox(height: AppSizes.p48),
              LayoutBuilder(
                builder: (context, constraints) {
                  final isDesktop = constraints.maxWidth > 800;
                  return isDesktop
                      ? const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  _SkillBar(
                                    label: 'FLUTTER & DART',
                                    percentage: 0.95,
                                  ),
                                  SizedBox(height: AppSizes.p32),
                                  _SkillBar(
                                    label: 'ANDROID (JAVA/KOTLIN)',
                                    percentage: 0.90,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: AppSizes.p48),
                            Expanded(
                              child: Column(
                                children: [
                                  _SkillBar(
                                    label: 'REST APIs & FIREBASE',
                                    percentage: 0.92,
                                  ),
                                  SizedBox(height: AppSizes.p32),
                                  _SkillBar(
                                    label: 'GOOGLE MAPS & LOCATION',
                                    percentage: 0.88,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : const Column(
                          children: [
                            _SkillBar(
                              label: 'FLUTTER & DART',
                              percentage: 0.95,
                            ),
                            SizedBox(height: AppSizes.p32),
                            _SkillBar(
                              label: 'STATE MANAGEMENT (BLOC/RIVERPOD)',
                              percentage: 0.92,
                            ),
                            SizedBox(height: AppSizes.p32),
                            _SkillBar(
                              label: 'FIREBASE & BACKEND INTEGRATION',
                              percentage: 0.88,
                            ),
                            SizedBox(height: AppSizes.p32),
                            _SkillBar(
                              label: 'CLEAN ARCHITECTURE / SOLID',
                              percentage: 0.90,
                            ),
                          ],
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
  const _SkillBar({required this.label, required this.percentage});

  final String label;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: percentage),
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
                  label,
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
