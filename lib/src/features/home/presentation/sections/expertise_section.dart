import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../common_widgets/responsive_layout.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_content.dart';
import '../../../../constants/app_sizes.dart';

class ExpertiseSection extends StatelessWidget {
  const ExpertiseSection({super.key});

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
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppColors.textSecondary,
                    ),
              ),
              const SizedBox(height: AppSizes.p48),
              const ResponsiveLayout(
                mobileBody: _ExpertiseGridMobile(),
                tabletBody: _ExpertiseGridDesktop(),
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
    // We have 4 items, 2 rows of 2
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _ExpertiseCard(item: AppContent.expertise[0]),
            ),
            const SizedBox(width: AppSizes.p24),
            Expanded(
              child: _ExpertiseCard(item: AppContent.expertise[1]),
            ),
          ],
        ),
        const SizedBox(height: AppSizes.p24),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _ExpertiseCard(item: AppContent.expertise[2]),
            ),
            const SizedBox(width: AppSizes.p24),
            Expanded(
              child: _ExpertiseCard(item: AppContent.expertise[3]),
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
    return Column(
      children: AppContent.expertise
          .map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: AppSizes.p24),
              child: _ExpertiseCard(item: item),
            ),
          )
          .toList(),
    );
  }
}

class _ExpertiseCard extends StatefulWidget {
  const _ExpertiseCard({required this.item});

  final ExpertiseItem item;

  @override
  State<_ExpertiseCard> createState() => _ExpertiseCardState();
}

class _ExpertiseCardState extends State<_ExpertiseCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(AppSizes.p24),
        transform: Matrix4.identity()..translate(0.0, _isHovered ? -8.0 : 0.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: _isHovered ? AppColors.primary.withValues(alpha: 0.2) : Colors.grey.shade100,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withValues(alpha: _isHovered ? 0.1 : 0.05),
              blurRadius: _isHovered ? 30 : 20,
              offset: Offset(0, _isHovered ? 12 : 4),
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
              child: Icon(widget.item.icon, color: AppColors.primary, size: 24),
            ),
            const SizedBox(height: AppSizes.p24),
            Text(
              widget.item.title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
            ),
            const SizedBox(height: AppSizes.p12),
            Text(
              widget.item.description,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.textSecondary,
                  ),
            ),
            const SizedBox(height: AppSizes.p24),
            ...widget.item.items.map(
              (item) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.check_circle,
                      size: 16,
                      color: AppColors.primary,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        item,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
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
      ),
    ).animate().fadeIn(delay: widget.item.delay.ms).slideY(begin: 0.2, end: 0);
  }
}
