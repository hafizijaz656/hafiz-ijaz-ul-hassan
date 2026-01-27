import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../common_widgets/responsive_layout.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_sizes.dart';

class FeaturedProjectsSection extends StatefulWidget {
  const FeaturedProjectsSection({super.key});

  @override
  State<FeaturedProjectsSection> createState() =>
      _FeaturedProjectsSectionState();
}

class _FeaturedProjectsSectionState extends State<FeaturedProjectsSection> {
  String _selectedFilter = 'All';

  final List<Project> _projects = [
    // EpazzTech
    Project(
      title: 'Workplace Scheduler',
      description:
          'Othership’s Workplace Scheduler is a cloud based software for hybrid and remote working that promotes collaboration and connection.',
      tags: ['FLUTTER', 'DART', 'CLOUD'],
      imageColor: const Color(0xFF4A90E2),
      category: 'Flutter',
      androidUrl:
          'https://play.google.com/store/apps/details?id=com.othership.hwms',
      imageUrl:
          'https://play-lh.googleusercontent.com/M7K1rHodQi1lxP1685ytc6WL1iQvAPLksovGovn7o3Nz7zeJa45_RFvi9VDi29np0g',
    ),
    Project(
      title: 'Meeting Room Display',
      description:
          'Load the Othership Meeting Room Display app to tablets/devices mounted outside your rooms and spaces.',
      tags: ['FLUTTER', 'DART', 'KIOSK'],
      imageColor: const Color(0xFF5C6BC0),
      category: 'Flutter',
      androidUrl:
          'https://play.google.com/store/apps/details?id=com.othership.kiosk',
      imageUrl:
          'https://play-lh.googleusercontent.com/mW1PhyF-H_bpC7Gt8vAT9bpkVyNahWYYxJNghCcaFbdm_T_otlsiC1d5DWIbkWE-AZs',
    ),
    Project(
      title: 'Visitor Management',
      description:
          'With instant authentication, appointment scheduling, and real-time monitoring, Othership offers a smooth and efficient experience.',
      tags: ['FLUTTER', 'DART', 'SECURITY'],
      imageColor: const Color(0xFF7E57C2),
      category: 'Flutter',
      androidUrl:
          'https://play.google.com/store/apps/details?id=com.othership.visitorapp',
      imageUrl:
          'https://play-lh.googleusercontent.com/Jq1HRhD6tySH2KDwnUhQrqkxd2CiUrrWzWXY4Os3jiW3hQ9ehtPqAHb9hq-3jc7OUww',
    ),

    // ConversoTech
    Project(
      title: 'Tap Tattoo App',
      description:
          'A cross-platform app and web solution for discovering tattoo designs, booking artists, and managing appointments.',
      tags: ['FLUTTER', 'DART', 'WEB'],
      imageColor: const Color(0xFF26A69A),
      category: 'Flutter',
    ),

    // Prosigns
    Project(
      title: 'Belsio HRM App',
      description:
          'A human resource management app designed to streamline employee management, attendance, and payroll.',
      tags: ['FLUTTER', 'DART', 'HRM'],
      imageColor: const Color(0xFF78909C),
      category: 'Flutter',
      androidUrl:
          'https://play.google.com/store/apps/details?id=io.belsiohrms.ios',
      imageUrl:
          'https://play-lh.googleusercontent.com/hEUFpBCI9y6ARyY8YPXzprERiaYDX4_KtWT-WjrZA3ILDWpxPlejuJfu2E3Mrv7Vf74',
    ),
    Project(
      title: 'Belsio CRM APP',
      description:
          'A customer relationship management app built to track leads, manage clients, and improve sales workflows.',
      tags: ['FLUTTER', 'DART', 'CRM'],
      imageColor: const Color(0xFF8D6E63),
      category: 'Flutter',
    ),
    Project(
      title: 'Belsio Snagging App',
      description:
          'A mobile app designed to streamline construction inspections by reporting, tracking, and resolving site issues.',
      tags: ['FLUTTER', 'DART', 'CONSTRUCTION'],
      imageColor: const Color(0xFFFF7043),
      category: 'Flutter',
    ),

    // Catalyic Tech
    Project(
      title: 'Apex Downloader',
      description:
          'A fast and reliable Android app for downloading videos, music, and media files from multiple sources.',
      tags: ['ANDROID', 'KOTLIN', 'JAVA'],
      imageColor: const Color(0xFF43A047),
      category: 'Android',
    ),
    Project(
      title: 'Apex Player',
      description:
          'A lightweight and powerful Android media player supporting multiple video and audio formats.',
      tags: ['ANDROID', 'KOTLIN', 'JAVA'],
      imageColor: const Color(0xFF1E88E5),
      category: 'Android',
    ),
    Project(
      title: 'Student Survey App',
      description:
          'An Android app designed to verify student details through structured survey forms.',
      tags: ['ANDROID', 'KOTLIN'],
      imageColor: const Color(0xFFAB47BC),
      category: 'Android',
    ),
    Project(
      title: 'QR BARCode Scanner',
      description:
          'A fast and accurate Android app for scanning QR codes and barcodes instantly.',
      tags: ['ANDROID', 'KOTLIN'],
      imageColor: const Color(0xFFEF5350),
      category: 'Android',
    ),
    Project(
      title: 'Nippon Dost',
      description:
          'Nippon Dost is a rewards app for painters who buy Nippon Paint Products in Pakistan.',
      tags: ['FLUTTER', 'DART', 'REWARDS'],
      imageColor: const Color(0xFFEC407A),
      category: 'Flutter',
      androidUrl:
          'https://play.google.com/store/apps/details?id=cat.nippon.dost',
      imageUrl:
          'https://play-lh.googleusercontent.com/POWOS3z_4YKzBTF_I9OCGvlDitBx0inpBlWwx_7Rd1lCfFWmCHXSCsv8yKNT0usaQg',
    ),
    Project(
      title: 'Card Club',
      description:
          'A cross-platform mobile app for managing and sharing digital cards with ease.',
      tags: ['FLUTTER', 'DART', 'SOCIAL'],
      imageColor: const Color(0xFF5C6BC0),
      category: 'Flutter',
    ),
    Project(
      title: 'Mayfair Expense\nManagement',
      description:
          'A custom business app built for Mayfair Company to manage expenses and operations efficiently.',
      tags: ['FLUTTER', 'DART', 'BUSINESS'],
      imageColor: const Color(0xFF66BB6A),
      category: 'Flutter',
    ),
    Project(
      title: 'Sahoolar Kar',
      description:
          'A cross-platform mobile app developed for a local client to simplify services and user engagement.',
      tags: ['FLUTTER', 'DART', 'SERVICES'],
      imageColor: const Color(0xFFFFCA28),
      category: 'Flutter',
    ),

    // CreCode IT Professionals
    Project(
      title: 'Tasbeeh Counter',
      description:
          'A simple yet effective digital tasbeeh app for daily prayers and counting.',
      tags: ['ANDROID', 'JAVA'],
      imageColor: const Color(0xFF00ACC1),
      category: 'Android',
      androidUrl:
          'https://play.google.com/store/apps/details?id=com.crecode.tasbeehcounter&pli=1',
      imageUrl:
          'https://play-lh.googleusercontent.com/RcGT4wOoPUTCM0aYI7ZzL61RheLPJ13dwIBtQ4BLomeAivXGEaQz2gy-edW8djd71g',
    ),
    Project(
      title: 'Instagram Video\nDownloader',
      description:
          'An Android app to seamlessly download and save Instagram videos.',
      tags: ['ANDROID', 'JAVA', 'KOTLIN'],
      imageColor: const Color(0xFFE91E63),
      category: 'Android',
    ),
    Project(
      title: 'Islam Plus',
      description:
          'A Islamic app providing Quran, prayer times, tasbeeh, and other religious resources.',
      tags: ['ANDROID', 'JAVA', 'KOTLIN'],
      imageColor: const Color(0xFF2E7D32),
      category: 'Android',
      androidUrl:
          'https://play.google.com/store/apps/details?id=com.crecode.islam.plusplus',
      imageUrl:
          'https://play-lh.googleusercontent.com/K55mNrzrvVvj01VSJWvBRdQnjKM-evhZgEKEAxWJOLumd6iYdY1mUEdFaszGadAuXGU',
    ),
    Project(
      title: 'Ramzan Plus -\nPrayer Times',
      description:
          'An app dedicated to Ramadan, featuring accurate prayer times, fasting schedules, and Islamic reminders.',
      tags: ['ANDROID', 'JAVA', 'KOTLIN'],
      imageColor: const Color(0xFFF57C00),
      category: 'Android',
      androidUrl:
          'https://play.google.com/store/apps/details?id=com.crecode.ramdan',
      imageUrl:
          'https://play-lh.googleusercontent.com/ZfwOyU47iIYx_-Oz7Ermo2fJ3mGpSr-xp2x3bqRNuVuOWx5LyIwpc_tsc3UC_2PuE2Y',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final filteredProjects = _selectedFilter == 'All'
        ? _projects
        : _projects.where((p) => p.category == _selectedFilter).toList();

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Featured Projects',
                          style: Theme.of(context).textTheme.displaySmall
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.textPrimary,
                              ),
                        ),
                        const SizedBox(height: AppSizes.p16),
                        Text(
                          'Showcasing innovation through clean code and intuitive design.',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  _FilterButtons(
                    selectedFilter: _selectedFilter,
                    onFilterChanged: (filter) =>
                        setState(() => _selectedFilter = filter),
                  ),
                ],
              ),
              const SizedBox(height: AppSizes.p48),
              ResponsiveLayout(
                mobileBody: _ProjectsGrid(
                  projects: filteredProjects,
                  crossAxisCount: 1,
                  childAspectRatio: 0.8,
                ),
                tabletBody: _ProjectsGrid(
                  projects: filteredProjects,
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                ),
                desktopBody: _ProjectsGrid(
                  projects: filteredProjects,
                  crossAxisCount: 3,
                  childAspectRatio: 0.8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FilterButtons extends StatelessWidget {
  const _FilterButtons({
    required this.selectedFilter,
    required this.onFilterChanged,
  });

  final String selectedFilter;
  final ValueChanged<String> onFilterChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: ['All', 'Flutter', 'Android'].map((filter) {
          final isSelected = selectedFilter == filter;
          return InkWell(
            onTap: () => onFilterChanged(filter),
            borderRadius: BorderRadius.circular(6),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : Colors.transparent,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                filter,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: isSelected ? Colors.white : AppColors.textSecondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }).toList(),
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
              color: AppColors.primary.withValues(alpha: _isHovered ? 0.15 : 0.05),
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
                      AnimatedScale(
                        duration: const Duration(milliseconds: 300),
                        scale: _isHovered ? 1.05 : 1.0,
                        child: Image.network(
                          widget.project.imageUrl!,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Center(
                              child: Icon(
                                Icons.image,
                                size: 48,
                                color: Colors.white.withValues(alpha: 0.5),
                              ),
                            );
                          },
                        ),
                      )
                    else
                      Center(
                        child: Icon(
                          Icons.image,
                          size: 48,
                          color: Colors.white.withValues(alpha: 0.5),
                        ),
                      ),
                    // Gradient Overlay
                    Positioned.fill(
                      child: Container(
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
                            style: Theme.of(context).textTheme.titleLarge
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
                            padding: const EdgeInsets.all(6),
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
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      widget.project.description,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.textSecondary,
                            height: 1.5,
                          ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: widget.project.tags
                          .take(3) // Limit tags to prevent overflow
                          .map(
                            (tag) => Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.background,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.grey.shade200,
                                ),
                              ),
                              child: Text(
                                tag,
                                style: Theme.of(context).textTheme.labelSmall
                                    ?.copyWith(
                                      color: AppColors.textSecondary,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
                                      letterSpacing: 0.5,
                                    ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    if (widget.project.androidUrl != null) ...[
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: OutlinedButton(
                          onPressed: () async {
                            final url = Uri.parse(widget.project.androidUrl!);
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            }
                          },
                          style: OutlinedButton.styleFrom(
                            foregroundColor: AppColors.primary,
                            side: BorderSide(
                              color: _isHovered
                                  ? AppColors.primary
                                  : Colors.grey.shade300,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: _isHovered
                                ? AppColors.primary.withValues(alpha: 0.05)
                                : Colors.transparent,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'View on Play Store',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: _isHovered
                                      ? AppColors.primary
                                      : AppColors.textSecondary,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Icon(
                                Icons.arrow_forward_rounded,
                                size: 16,
                                color: _isHovered
                                    ? AppColors.primary
                                    : AppColors.textSecondary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    )
        .animate()
        .fadeIn(
          duration: 600.ms,
          delay: widget.delay.ms,
          curve: Curves.easeOut,
        )
        .slideY(
          begin: 0.1,
          end: 0,
          duration: 600.ms,
          delay: widget.delay.ms,
          curve: Curves.easeOut,
        );
  }
}

class Project {
  final String title;
  final String description;
  final List<String> tags;
  final Color imageColor;
  final String category;
  final String? androidUrl;
  final String? iosUrl;
  final String? imageUrl;

  Project({
    required this.title,
    required this.description,
    required this.tags,
    required this.imageColor,
    required this.category,
    this.androidUrl,
    this.iosUrl,
    this.imageUrl,
  });
}
