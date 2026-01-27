import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../common_widgets/responsive_layout.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_sizes.dart';

class ExpertiseSection extends StatelessWidget {
  const ExpertiseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        vertical: AppSizes.p64,
        horizontal: AppSizes.p24,
      ),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: AppSizes.maxContentWidth),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                  children: [
                    const TextSpan(text: 'Technical '),
                    TextSpan(
                      text: 'Expertise',
                      style: const TextStyle(color: AppColors.primary),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSizes.p16),
              Text(
                'Leveraging modern architectures and cutting-edge tools to build seamless digital products across all platforms.',
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: AppColors.textSecondary),
              ),
              const SizedBox(height: AppSizes.p48),
              const ResponsiveLayout(
                mobileBody: _ExpertiseGridMobile(),
                tabletBody: _ExpertiseGridDesktop(), // Tablet can likely fit 3 or 2
                desktopBody: _ExpertiseGridDesktop(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ExpertiseGridDesktop extends StatelessWidget {
  const _ExpertiseGridDesktop();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _ExpertiseCard(
                icon: Icons.smartphone,
                title: 'Mobile Development',
                description:
                    'Crafting pixel-perfect cross-platform apps with smooth animations and native-like performance.',
                items: [
                  'Flutter & Dart',
                  'Riverpod / Bloc',
                  'Firebase Integration',
                  'RESTful APIs',
                ],
                delay: 0,
              ),
            ),
            SizedBox(width: AppSizes.p24),
            Expanded(
              child: _ExpertiseCard(
                icon: Icons.terminal,
                title: 'Tools & DevOps',
                description:
                    'Ensuring reliable delivery and maintainable codebases through automated pipelines and modern tools.',
                items: [
                  'Git & GitHub Actions',
                  'Docker & CI/CD',
                  'Fastlane Automation',
                  'App Store Deployment',
                ],
                delay: 100,
              ),
            ),
          ],
        ),
        SizedBox(height: AppSizes.p24),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _ExpertiseCard(
                icon: FontAwesomeIcons.compass,
                title: 'Specializations',
                description:
                'Going beyond simple coding to design scalable architectures and high-impact user experiences.',
                items: [
                  'Clean Architecture',
                  'Performance Tuning',
                  'UI/UX Implementation',
                  'Code Reviews & Mentoring',
                ],
                delay: 200,
              ),
            ),
            SizedBox(width: AppSizes.p24),
            Expanded(
              child: _ExpertiseCard(
                icon: FontAwesomeIcons.creditCard,
                title: 'Payment Gateways',
                description:
                'Integrating secure global and local payment solutions for seamless transactions.',
                items: [
                  'Stripe, Paypal & PayFast',
                  'Network (Dubai) & Card Point (USA)',
                  'In-App Purchases',
                  'In-App Subscriptions',
                ],
                delay: 300,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ExpertiseGridMobile extends StatelessWidget {
  const _ExpertiseGridMobile();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _ExpertiseCard(
          icon: Icons.smartphone,
          title: 'Mobile Development',
          description:
              'Crafting pixel-perfect cross-platform apps with smooth animations and native-like performance.',
          items: [
            'Flutter & Dart',
            'Riverpod / Bloc',
            'Firebase Integration',
            'RESTful APIs',
          ],
          delay: 0,
        ),
        SizedBox(height: AppSizes.p24),
        _ExpertiseCard(
          icon: Icons.terminal,
          title: 'Tools & DevOps',
          description:
              'Ensuring reliable delivery and maintainable codebases through automated pipelines and modern tools.',
          items: [
            'Git & GitHub Actions',
            'Docker & CI/CD',
            'Fastlane Automation',
            'App Store Deployment',
          ],
          delay: 100,
        ),
        SizedBox(height: AppSizes.p24),
        _ExpertiseCard(
          icon: FontAwesomeIcons.compass,
          title: 'Specializations',
          description:
              'Going beyond simple coding to design scalable architectures and high-impact user experiences.',
          items: [
            'Clean Architecture',
            'Performance Tuning',
            'UI/UX Implementation',
            'Code Reviews & Mentoring',
          ],
          delay: 200,
        ),
        SizedBox(height: AppSizes.p24),
        _ExpertiseCard(
          icon: FontAwesomeIcons.creditCard,
          title: 'Payment Gateways',
          description:
              'Integrating secure global and local payment solutions for seamless transactions.',
          items: [
            'Stripe, Paypal & PayFast',
            'Network (Dubai) & Card Point (USA)',
            'In-App Purchases',
            'In-App Subscriptions',
          ],
          delay: 300,
        ),
      ],
    );
  }
}

class _ExpertiseCard extends StatelessWidget {
  const _ExpertiseCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.items,
    required this.delay,
  });

  final IconData icon;
  final String title;
  final String description;
  final List<String> items;
  final int delay;

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: const EdgeInsets.all(AppSizes.p24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey.shade100),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 20,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: AppColors.primary, size: 24),
              ),
              const SizedBox(height: AppSizes.p24),
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: AppSizes.p12),
              Text(
                description,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: AppSizes.p24),
              ...items.map(
                (item) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.check_circle,
                        size: 16,
                        color: AppColors
                            .primary, // Using primary blue for check icon based on image
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          item,
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
        .animate()
        .fadeIn(delay: delay.ms, duration: 600.ms)
        .slideY(begin: 0.2, end: 0);
  }
}
