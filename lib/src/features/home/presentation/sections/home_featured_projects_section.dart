import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../common_widgets/responsive_layout.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_content.dart';
import '../../../../constants/app_sizes.dart';

class HomeFeaturedProjectsSection extends StatelessWidget {
  const HomeFeaturedProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final featuredProjects = AppContent.projects.take(3).toList();

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
                          TextSpan(text: 'Featured '),
                          TextSpan(
                            text: 'Projects',
                            style: TextStyle(color: AppColors.primary),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppSizes.p16),
                    Text(
                      'A selection of my recent work and contributions.',
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
                                TextSpan(text: 'Featured '),
                                TextSpan(
                                  text: 'Projects',
                                  style: TextStyle(color: AppColors.primary),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: AppSizes.p16),
                          Text(
                            'A selection of my recent work and contributions.',
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: AppColors.textSecondary,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    const _ViewAllButton(),
                  ],
                ),
              ),
              const SizedBox(height: AppSizes.p48),
              ResponsiveLayout(
                mobileBody: _ProjectsGrid(
                  projects: featuredProjects,
                  crossAxisCount: 1,
                  childAspectRatio: 0.8,
                ),
                tabletBody: _ProjectsGrid(
                  projects: featuredProjects,
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                ),
                desktopBody: _ProjectsGrid(
                  projects: featuredProjects,
                  crossAxisCount: 3,
                  childAspectRatio: 0.8,
                ),
              ),
              const SizedBox(height: AppSizes.p48),
              // View All Button for Mobile
              const ResponsiveLayout(
                mobileBody: Center(child: _ViewAllButton()),
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

class _ViewAllButton extends StatelessWidget {
  const _ViewAllButton();

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () => context.go('/projects'),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        side: const BorderSide(color: AppColors.primary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      icon: const Icon(Icons.arrow_forward, color: AppColors.primary),
      label: Text(
        'View All Projects',
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}

class _ProjectsGrid extends StatelessWidget {
  const _ProjectsGrid({
    required this.projects,
    required this.crossAxisCount,
    required this.childAspectRatio,
  });

  final List<Project> projects;
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: AppSizes.p24,
        mainAxisSpacing: AppSizes.p24,
        childAspectRatio: childAspectRatio,
      ),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        return _ProjectCard(project: projects[index], delay: index * 100);
      },
    );
  }
}

class _ProjectCard extends StatefulWidget {
  const _ProjectCard({required this.project, required this.delay});

  final Project project;
  final int delay;

  @override
  State<_ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<_ProjectCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.identity()..translate(0.0, _isHovered ? -8.0 : 0.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: _isHovered
                ? AppColors.primary.withValues(alpha: 0.2)
                : Colors.transparent,
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color:
                  AppColors.primary.withValues(alpha: _isHovered ? 0.15 : 0.05),
              blurRadius: _isHovered ? 30 : 20,
              offset: Offset(0, _isHovered ? 12 : 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(18),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(color: widget.project.imageColor),
                    if (widget.project.imageUrl != null)
                      Image.network(
                        widget.project.imageUrl!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(color: widget.project.imageColor);
                        },
                      ),
                    // Gradient Overlay
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withValues(alpha: 0.3),
                          ],
                          stops: const [0.7, 1.0],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            widget.project.title,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textPrimary,
                                  height: 1.2,
                                ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (widget.project.androidUrl != null)
                          Container(
                            margin: const EdgeInsets.only(left: 8),
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.green.withValues(alpha: 0.1),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.android,
                              size: 16,
                              color: Colors.green,
                            ),
                          ),
                        if (widget.project.iosUrl != null)
                          Container(
                            margin: const EdgeInsets.only(left: 8),
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.blue.withValues(alpha: 0.1),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.apple,
                              size: 16,
                              color: Colors.blue,
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: widget.project.imageColor.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        widget.project.category,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: widget.project.imageColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Expanded(
                      child: Text(
                        widget.project.description,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: AppColors.textSecondary,
                              height: 1.5,
                            ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: widget.project.tags
                          .take(3)
                          .map(
                            (tag) => Container(
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
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          final url = widget.project.androidUrl ??
                              widget.project.iosUrl;
                          if (url != null) {
                            launchUrl(Uri.parse(url));
                          }
                        },
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          side: BorderSide(color: Colors.grey.shade300),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'View Details',
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    color: AppColors.textPrimary,
                                    fontWeight: FontWeight.bold,
                                  ),
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
    ).animate().fadeIn(delay: widget.delay.ms).slideY(begin: 0.1, end: 0);
  }
}
