import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_constants.dart';
import '../../../../constants/app_sizes.dart';
import '../../../../common_widgets/responsive_layout.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Text(
                'THE DEVELOPER',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
              ).animate().fadeIn(duration: 600.ms).slideX(begin: -0.1, end: 0),
              const SizedBox(height: AppSizes.p16),
              Text(
                'Biography',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
              )
                  .animate()
                  .fadeIn(duration: 600.ms, delay: 100.ms)
                  .slideX(begin: -0.1, end: 0),
              const SizedBox(height: AppSizes.p16),
              Text(
                aboutMe,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: AppColors.textSecondary,
                      height: 1.5,
                    ),
              ).animate().fadeIn(duration: 600.ms, delay: 200.ms),
              const SizedBox(height: AppSizes.p48),
              // Content Grid
              const ResponsiveLayout(
                mobileBody: _MobileLayout(),
                tabletBody: _TabletLayout(),
                desktopBody: _DesktopLayout(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DesktopLayout extends StatelessWidget {
  const _DesktopLayout();

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              _ProfessionalNarrativeCard(),
              SizedBox(height: AppSizes.p24),
              _StatsRow(),
            ],
          ),
        ),
        SizedBox(width: AppSizes.p32),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              _EducationCard(),
              SizedBox(height: AppSizes.p32),
              _TechStackSection(),
            ],
          ),
        ),
      ],
    );
  }
}

class _TabletLayout extends StatelessWidget {
  const _TabletLayout();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _ProfessionalNarrativeCard(),
        SizedBox(height: AppSizes.p24),
        _StatsRow(),
        SizedBox(height: AppSizes.p32),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: _EducationCard()),
            SizedBox(width: AppSizes.p24),
            Expanded(child: _TechStackSection()),
          ],
        ),
      ],
    );
  }
}

class _MobileLayout extends StatelessWidget {
  const _MobileLayout();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _ProfessionalNarrativeCard(),
        SizedBox(height: AppSizes.p24),
        _StatsRow(isMobile: true),
        SizedBox(height: AppSizes.p32),
        _EducationCard(),
        SizedBox(height: AppSizes.p32),
        _TechStackSection(),
      ],
    );
  }
}

class _ProfessionalNarrativeCard extends StatelessWidget {
  const _ProfessionalNarrativeCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.p32),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Professional Narrative',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
          ),
          const SizedBox(height: AppSizes.p24),
          Text(
            'Mobile Application Developer with 5+ years of experience in Android and Flutter development. Experienced in REST APIs, Firebase, Google Maps, and enterprise-grade mobile solutions.',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.textSecondary,
                  height: 1.6,
                ),
          ),
          const SizedBox(height: AppSizes.p16),
          Text(
            'I focus on writing clean, maintainable code using patterns like BLoC and Provider, ensuring that applications are not only beautiful but also scalable. I\'ve led development for Fintech, E-commerce, and Social platforms, consistently delivering products that rank high on user satisfaction.',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.textSecondary,
                  height: 1.6,
                ),
          ),
        ],
      ),
    )
        .animate()
        .fadeIn(duration: 600.ms, delay: 300.ms)
        .slideY(begin: 0.1, end: 0);
  }
}

class _StatsRow extends StatelessWidget {
  const _StatsRow({this.isMobile = false});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final children = [
      const Expanded(
        child: _StatCard(label: 'Experience', value: '5+', subLabel: 'YEARS'),
      ),
      const SizedBox(width: AppSizes.p16),
      const Expanded(
        child: _StatCard(
          label: 'Published',
          value: '150+',
          subLabel: 'APPS',
          color: Color(0xFF0EA5E9), // Sky blue
        ),
      ),
      const SizedBox(width: AppSizes.p16),
      const Expanded(
        child: _StatCard(
          label: 'Clients',
          value: '40+',
          subLabel: 'SATISFIED',
          color: Color(0xFFD946EF), // Fuchsia
        ),
      ),
    ];

    if (isMobile) {
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _StatCard(label: 'Experience', value: '5+', subLabel: 'YEARS'),
          SizedBox(height: AppSizes.p16),
          _StatCard(
            label: 'Published',
            value: '150+',
            subLabel: 'APPS',
            color: Color(0xFF0EA5E9),
          ),
          SizedBox(height: AppSizes.p16),
          _StatCard(
            label: 'Clients',
            value: '40+',
            subLabel: 'SATISFIED',
            color: Color(0xFFD946EF),
          ),
        ],
      );
    }

    return Row(children: children)
        .animate()
        .fadeIn(duration: 600.ms, delay: 400.ms)
        .slideY(begin: 0.1, end: 0);
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.label,
    required this.value,
    required this.subLabel,
    this.color = AppColors.primary,
  });

  final String label;
  final String value;
  final String subLabel;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.p24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
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
          Text(
            label,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppColors.textSecondary),
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
          ),
          const SizedBox(height: 4),
          Text(
            subLabel,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: AppColors.textSecondary,
                  letterSpacing: 1.0,
                ),
          ),
        ],
      ),
    );
  }
}

class _EducationCard extends StatelessWidget {
  const _EducationCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.p32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: AppColors.primary.withValues(alpha: 0.2),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.05),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                FontAwesomeIcons.graduationCap,
                color: AppColors.primary,
              ),
              const SizedBox(width: 12),
              Text(
                'Education',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.p24),
          Text(
            'BS Computer Science',
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            'Riphah International University',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.textSecondary,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            'Graduated with Distinction',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(),
          ),
          Text(
            'EDUCATION HISTORY',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.textSecondary,
                  letterSpacing: 1.0,
                ),
          ),
          const SizedBox(height: 16),
          const _CertificationItem('ICS - Superior College, Lahore (2015)'),
          const SizedBox(height: 16),
          Text(
            'LANGUAGES',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.textSecondary,
                  letterSpacing: 1.0,
                ),
          ),
          const SizedBox(height: 16),
          const _CertificationItem('Urdu, English, Hindi'),
        ],
      ),
    )
        .animate()
        .fadeIn(duration: 600.ms, delay: 500.ms)
        .slideY(begin: 0.1, end: 0);
  }
}

class _CertificationItem extends StatelessWidget {
  const _CertificationItem(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 6,
          height: 6,
          decoration: const BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppColors.textPrimary),
          ),
        ),
      ],
    );
  }
}

class _TechStackSection extends StatelessWidget {
  const _TechStackSection();

  @override
  Widget build(BuildContext context) {
    final tags = [
      'Flutter',
      'Dart',
      'Android',
      'Java',
      'Kotlin',
      'REST APIs',
      'Google Maps',
      'SQLite',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tech Stack',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
        ),
        const SizedBox(height: AppSizes.p24),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: tags.map((tag) => _TechChip(tag)).toList(),
        ),
      ],
    )
        .animate()
        .fadeIn(duration: 600.ms, delay: 600.ms)
        .slideY(begin: 0.1, end: 0);
  }
}

class _TechChip extends StatelessWidget {
  const _TechChip(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFEFF6FF), // Light blue bg
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
