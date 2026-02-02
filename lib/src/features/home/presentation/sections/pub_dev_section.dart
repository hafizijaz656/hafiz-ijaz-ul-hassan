import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../common_widgets/responsive_layout.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_sizes.dart';

class PubDevSection extends StatelessWidget {
  const PubDevSection({super.key});

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
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color(
                    0xFF0175C2,
                  ).withValues(alpha: 0.1), // Pub.dev blue
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      FontAwesomeIcons.boxOpen,
                      size: 12,
                      color: Color(0xFF0175C2),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'PUB.DEV PUBLISHER',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: const Color(0xFF0175C2),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                    ),
                  ],
                ),
              ).animate().fadeIn(duration: 600.ms).slideY(begin: 0.2, end: 0),
              const SizedBox(height: AppSizes.p24),
              ResponsiveLayout(
                mobileBody: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textPrimary,
                                  fontSize: 32,
                                ),
                        children: const [
                          TextSpan(text: 'Open Source & '),
                          TextSpan(
                            text: 'Pub.dev',
                            style: TextStyle(color: Color(0xFF0175C2)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppSizes.p16),
                    Text(
                      'Contributing to the Flutter ecosystem through high-quality packages and reusable components used by thousands of developers.',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: AppColors.textSecondary,
                          ),
                    ),
                  ],
                ),
                tabletBody: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.textPrimary,
                                  ),
                              children: const [
                                TextSpan(text: 'Open Source & '),
                                TextSpan(
                                  text: 'Pub.dev',
                                  style: TextStyle(color: Color(0xFF0175C2)),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: AppSizes.p16),
                          Text(
                            'Contributing to the Flutter ecosystem through high-quality packages and reusable components used by thousands of developers.',
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: AppColors.textSecondary,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: AppSizes.p24),
                    const _ViewPubProfileButton(),
                  ],
                ),
              )
                  .animate()
                  .fadeIn(delay: 200.ms, duration: 600.ms)
                  .slideY(begin: 0.2, end: 0),
              const SizedBox(height: AppSizes.p48),
              const ResponsiveLayout(
                mobileBody: _PubPackagesGridMobile(),
                tabletBody: _PubPackagesGridDesktop(),
                desktopBody: _PubPackagesGridDesktop(),
              ),
              const SizedBox(height: AppSizes.p24),
              const ResponsiveLayout(
                mobileBody: Center(child: _ViewPubProfileButton()),
                tabletBody: SizedBox.shrink(),
                desktopBody: SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ViewPubProfileButton extends StatelessWidget {
  const _ViewPubProfileButton();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () async {
        final url = Uri.parse(
          'https://pub.dev/',
        ); // Replace with actual profile
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF0175C2),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      ),
      icon: const Icon(FontAwesomeIcons.upRightFromSquare, size: 16),
      label: const Text('View on Pub.dev'),
    );
  }
}

class _PubPackagesGridDesktop extends StatelessWidget {
  const _PubPackagesGridDesktop();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start, // Center the single item
      children: [
        SizedBox(
          width: 350, // Constrain width since it's a single item
          child: _PackageCard(
            title: 'bottom_nav_speed_dial',
            version: 'v1.0.1',
            likes: 7,
            score: '150 POINTS',
            description:
                'Combine a Bottom Navigation Bar with a Speed Dial menu in one elegant, easy-to-use widget.',
            tags: ['UI', 'NAVIGATION'],
            delay: 0,
            url: 'https://pub.dev/packages/bottom_nav_speed_dial',
          ),
        ),
      ],
    );
  }
}

class _PubPackagesGridMobile extends StatelessWidget {
  const _PubPackagesGridMobile();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _PackageCard(
          title: 'bottom_nav_speed_dial',
          version: 'v1.0.1',
          likes: 7,
          score: '150 POINTS',
          description:
              'Combine a Bottom Navigation Bar with a Speed Dial menu in one elegant, easy-to-use widget.',
          tags: ['UI', 'NAVIGATION'],
          delay: 0,
          url: 'https://pub.dev/packages/bottom_nav_speed_dial',
        ),
      ],
    );
  }
}

class _PackageCard extends StatelessWidget {
  const _PackageCard({
    required this.title,
    required this.version,
    required this.likes,
    required this.score,
    required this.description,
    required this.tags,
    required this.delay,
    this.url,
  });

  final String title;
  final String version;
  final int likes;
  final String score;
  final String description;
  final List<String> tags;
  final int delay;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: url != null
              ? () async {
                  final uri = Uri.parse(url!);
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  }
                }
              : null,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.p24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(
                          0xFF0175C2,
                        ).withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        FontAwesomeIcons.box,
                        color: Color(0xFF0175C2),
                        size: 16,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            version,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(
                              Icons.favorite,
                              size: 10,
                              color: Colors.red,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '$likes Likes',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                    color: AppColors.textSecondary,
                                    fontSize: 10,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.p24),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                ),
                const SizedBox(height: AppSizes.p12),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                        height: 1.5,
                      ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: AppSizes.p24),
                const Divider(),
                const SizedBox(height: AppSizes.p12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: tags
                          .map(
                            (tag) => Container(
                              margin: const EdgeInsets.only(right: 8),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                tag,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                      color: AppColors.textSecondary,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    Text(
                      score,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: const Color(0xFF0175C2),
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    )
        .animate()
        .fadeIn(delay: delay.ms, duration: 600.ms)
        .slideY(begin: 0.2, end: 0);
  }
}
