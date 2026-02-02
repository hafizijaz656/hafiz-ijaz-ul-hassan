import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_sizes.dart';

class ProfessionalJourneySection extends StatelessWidget {
  const ProfessionalJourneySection({super.key});

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
              Text(
                'Professional Journey',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
              ),
              const SizedBox(height: AppSizes.p16),
              Text(
                'A curated timeline of my career evolution and contributions to the global Flutter ecosystem.',
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: AppColors.textSecondary),
              ),
              const SizedBox(height: AppSizes.p64),
              const _Timeline(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Timeline extends StatelessWidget {
  const _Timeline();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 800;

        return Column(
          children: [
            _TimelineItem(
              title: 'Sr.Mobile Apps Developer (Flutter)',
              company: 'Epazz Tech',
              period: 'OCT 2025 - PRESENT',
              description:
                  'Developed and maintained scalable cross-platform OtherShip Apps using Flutter & Dart. Integrated RESTFul APIs, Firebase, and 3rd-party SDKs. Applied Flutter RiverPod state management and mobile architecture best practices. Followed Agile/TDD workflows with Git for clean, stable, and maintainable code.',
              tags: ['FLUTTER', 'DART', 'RIVERPOD', 'FIREBASE'],
              isLeft: true,
              icon: FontAwesomeIcons.briefcase,
              isMobile: isMobile,
            ),
            _TimelineItem(
              title: 'Mobile Apps Developer (Flutter)',
              company: 'ConversoTech',
              period: 'MAY 2024 - OCT 2025',
              description:
                  'Developed and maintained scalable cross-platform apps using Flutter & Dart. Integrated RESTFul APIs, Firebase, and 3rd-party SDKs. Applied GetX state management and mobile architecture best practices. Followed Agile/TDD workflows with Git.',
              tags: ['FLUTTER', 'DART', 'GETX', 'FIREBASE'],
              isLeft: false,
              icon: FontAwesomeIcons.mobile,
              isMobile: isMobile,
            ),
            _TimelineItem(
              title: 'Flutter Developer',
              company: 'Prosigns',
              period: 'MAR 2023 - MAR 2024',
              description:
                  'Contributed to enterprise-level mobile applications (HRM, CRM). Built responsive cross-platform apps ensuring seamless performance. Optimized application performance, enhanced UI/UX, and integrated secure authentication.',
              tags: ['FLUTTER', 'REST API', 'UI/UX'],
              isLeft: true,
              icon: FontAwesomeIcons.code,
              isMobile: isMobile,
            ),
            _TimelineItem(
              title: 'Flutter Developer / Mobile App Developer',
              company: 'Catalyic Tech',
              period: 'AUG 2021 - MAR 2023',
              description:
                  'Developed cross-platform mobile applications using Flutter and native Android. Collaborated with backend teams to integrate RESTful APIs and Firebase. Implemented clean architecture and state management solutions.',
              tags: ['FLUTTER', 'ANDROID', 'CLEAN ARCH'],
              isLeft: false,
              icon: FontAwesomeIcons.layerGroup,
              isMobile: isMobile,
            ),
            _TimelineItem(
              title: 'Android Developer',
              company: 'CreCode IT Professionals',
              period: 'APR 2020 - APR 2021',
              description:
                  'Began career as an Android Developer. Contributed to multiple projects including Tasbeeh Counter, Islam Plus, and Ramzan Plus. Strengthened expertise in Java, Kotlin, and Android native development.',
              tags: ['ANDROID', 'JAVA', 'KOTLIN'],
              isLeft: true,
              icon: FontAwesomeIcons.android,
              isMobile: isMobile,
            ),
          ]
              .animate(interval: 200.ms)
              .fadeIn(duration: 600.ms)
              .slideY(begin: 0.2, end: 0),
        );
      },
    );
  }
}

class _TimelineItem extends StatelessWidget {
  const _TimelineItem({
    required this.title,
    required this.company,
    required this.period,
    required this.description,
    required this.tags,
    required this.isLeft,
    required this.icon,
    required this.isMobile,
  });

  final String title;
  final String company;
  final String period;
  final String description;
  final List<String> tags;
  final bool isLeft;
  final IconData icon;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    if (isMobile) {
      return IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: 40,
              child: Column(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primary.withValues(alpha: 0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Icon(icon, color: Colors.white, size: 16),
                  ),
                  Expanded(
                    child: Container(width: 2, color: Colors.grey.shade300),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 24),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 48),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      period,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColors.textSecondary,
                            letterSpacing: 1.0,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
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
                            title,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textPrimary,
                                  fontSize: 18,
                                ),
                          ),
                          if (company.isNotEmpty) ...[
                            const SizedBox(height: 4),
                            Text(
                              company,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                          const SizedBox(height: 12),
                          Text(
                            description,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: AppColors.textSecondary,
                                  height: 1.5,
                                ),
                          ),
                          if (tags.isNotEmpty) ...[
                            const SizedBox(height: 16),
                            Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: tags
                                  .map(
                                    (tag) => Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 6,
                                      ),
                                      decoration: BoxDecoration(
                                        color: AppColors.primary
                                            .withValues(alpha: 0.1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        tag,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall
                                            ?.copyWith(
                                              color: AppColors.primary,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: isLeft
                ? _ContentCard(
                    title: title,
                    company: company,
                    description: description,
                    tags: tags,
                    alignRight: true,
                  )
                : _DateLabel(period: period, alignRight: true),
          ),
          SizedBox(
            width: 60,
            child: Column(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 4),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primary.withValues(alpha: 0.3),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Icon(icon, color: Colors.white, size: 16),
                ),
                Expanded(
                  child: Container(width: 2, color: Colors.grey.shade300),
                ),
              ],
            ),
          ),
          Expanded(
            child: !isLeft
                ? _ContentCard(
                    title: title,
                    company: company,
                    description: description,
                    tags: tags,
                    alignRight: false,
                  )
                : _DateLabel(period: period, alignRight: false),
          ),
        ],
      ),
    );
  }
}

class _ContentCard extends StatelessWidget {
  const _ContentCard({
    required this.title,
    required this.company,
    required this.description,
    required this.tags,
    required this.alignRight,
  });

  final String title;
  final String company;
  final String description;
  final List<String> tags;
  final bool alignRight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: alignRight ? 0 : 24,
        right: alignRight ? 24 : 0,
        bottom: 48,
      ),
      child: Column(
        crossAxisAlignment:
            alignRight ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
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
                  title,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                ),
                if (company.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    company,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
                const SizedBox(height: 12),
                Text(
                  description,
                  maxLines: 7,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.textSecondary,
                        height: 1.5,
                      ),
                ),
                if (tags.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: tags
                        .map(
                          (tag) => Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.primary.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              tag,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DateLabel extends StatelessWidget {
  const _DateLabel({required this.period, required this.alignRight});

  final String period;
  final bool alignRight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: alignRight ? 0 : 24,
        right: alignRight ? 24 : 0,
        top: 10,
      ),
      child: Text(
        period,
        textAlign: alignRight ? TextAlign.right : TextAlign.left,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.textSecondary,
              letterSpacing: 1.0,
            ),
      ),
    );
  }
}
