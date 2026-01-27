import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import '../../../../common_widgets/responsive_layout.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_sizes.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset('assets/home_top_container_bg.mp4')
          ..initialize()
              .then((_) {
                _controller.setLooping(true);
                _controller.setVolume(0.0); // Mute the video
                _controller.play();
                setState(() {
                  _isInitialized = true;
                });
              })
              .catchError((error) {
                debugPrint('Error initializing video player: $error');
              });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.backgroundAlt,
      child: Stack(
        children: [
          // Video Background
          if (_isInitialized)
            Positioned.fill(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),

          //Overlay to ensure text readability
          Positioned.fill(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: Container(
                  color: AppColors.textPrimary.withValues(alpha: 0.4),
                ),
              ),
            ),
          ),

          // Content
          Center(
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: AppSizes.maxContentWidth,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.p24,
                vertical: AppSizes.p64,
              ),
              child: const ResponsiveLayout(
                mobileBody: _HeroMobile(),
                tabletBody: _HeroDesktop(), // Tablet can likely share desktop layout or be a condensed version
                desktopBody: _HeroDesktop(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HeroDesktop extends StatelessWidget {
  const _HeroDesktop();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 5, child: _HeroContent(textAlign: TextAlign.start)),
        SizedBox(width: AppSizes.p48),
        Expanded(flex: 4, child: _HeroImage()),
      ],
    );
  }
}

class _HeroMobile extends StatelessWidget {
  const _HeroMobile();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _HeroImage(),
        SizedBox(height: AppSizes.p48),
        _HeroContent(textAlign: TextAlign.center),
      ],
    );
  }
}

class _HeroContent extends StatelessWidget {
  const _HeroContent({required this.textAlign});

  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    final alignment = textAlign == TextAlign.start
        ? CrossAxisAlignment.start
        : CrossAxisAlignment.center;

    return Column(
      crossAxisAlignment: alignment,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: AppColors.primary.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.circle, size: 8, color: AppColors.background),
              const SizedBox(width: 8),
              Text(
                'AVAILABLE FOR NEW PROJECTS',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: AppColors.background,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
        ).animate().fadeIn(duration: 600.ms).slideY(begin: 0.2, end: 0),
        const SizedBox(height: AppSizes.p24),
        RichText(
              textAlign: textAlign,
              text: TextSpan(
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: AppColors.background,
                  height: 1.1,
                ),
                children: const [
                  TextSpan(text: 'Hafiz Ijaz\n'),
                  TextSpan(
                    text: 'Ul Hassan',
                    style: TextStyle(color: AppColors.background),
                  ),
                ],
              ),
            )
            .animate()
            .fadeIn(delay: 200.ms, duration: 600.ms)
            .slideY(begin: 0.2, end: 0),
        const SizedBox(height: AppSizes.p24),
        Text(
              'Mobile Application Developer with 5+ years of experience in Android and Flutter development.',
              textAlign: textAlign,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: AppColors.background,
                fontWeight: FontWeight.normal,
              ),
            )
            .animate()
            .fadeIn(delay: 400.ms, duration: 600.ms)
            .slideY(begin: 0.2, end: 0),
        const SizedBox(height: AppSizes.p40),
        Row(
              mainAxisAlignment: textAlign == TextAlign.center
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () => context.go('/projects'),
                  child: const Text('View Projects'),
                ),
                const SizedBox(width: AppSizes.p16),
                OutlinedButton(
                  onPressed: () => context.go('/contact'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.background,
                    side: const BorderSide(
                      color: AppColors.background,
                    ), // Default border color
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Contact Me'),
                ),
              ],
            )
            .animate()
            .fadeIn(delay: 600.ms, duration: 600.ms)
            .slideY(begin: 0.2, end: 0),
        const SizedBox(height: AppSizes.p32),
        _SocialLinks(textAlign: textAlign)
            .animate()
            .fadeIn(delay: 700.ms, duration: 600.ms)
            .slideY(begin: 0.2, end: 0),
        const SizedBox(height: AppSizes.p48),
        Row(
              mainAxisAlignment: textAlign == TextAlign.center
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.start,
              children: [
                const _StatItem(value: '50+', label: 'APPS LAUNCHED'),
                Container(
                  height: 40,
                  width: 1,
                  color: Colors.grey.shade300,
                  margin: const EdgeInsets.symmetric(horizontal: AppSizes.p24),
                ),
                const _StatItem(value: '5+', label: 'YEARS EXP'),
              ],
            )
            .animate()
            .fadeIn(delay: 800.ms, duration: 600.ms)
            .slideY(begin: 0.2, end: 0),
      ],
    );
  }
}

class _SocialLinks extends StatelessWidget {
  const _SocialLinks({required this.textAlign});

  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: textAlign == TextAlign.center
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,
      children: const [
        _SocialButton(
          icon: FontAwesomeIcons.github,
          url: 'https://github.com/hafizijaz656',
          label: 'GitHub',
        ),
        SizedBox(width: 16),
        _SocialButton(
          icon: FontAwesomeIcons.linkedinIn,
          url: 'https://www.linkedin.com/in/hafiz-ijaz-ul-hassan-846973170',
          label: 'LinkedIn',
        ),
        SizedBox(width: 16),
        _SocialButton(
          icon: FontAwesomeIcons.instagram,
          url: 'https://www.instagram.com/hafizijaz1996',
          label: 'Instagram',
        ),
      ],
    );
  }
}

class _SocialButton extends StatefulWidget {
  const _SocialButton({
    required this.icon,
    required this.url,
    required this.label,
  });

  final IconData icon;
  final String url;
  final String label;

  @override
  State<_SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<_SocialButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: IconButton(
        onPressed: () async {
          final uri = Uri.parse(widget.url);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri);
          }
        },
        icon: Icon(
          widget.icon,
          size: 24,
          color: _isHovered ? AppColors.primary : AppColors.textSecondary,
        ),
        tooltip: widget.label,
        style: IconButton.styleFrom(
          backgroundColor: _isHovered
              ? AppColors.secondary.withValues(alpha: 0.1)
              : AppColors.background,
          padding: const EdgeInsets.all(12),
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  const _StatItem({required this.value, required this.label});

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.background,
          ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: AppColors.background,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class _HeroImage extends StatelessWidget {
  const _HeroImage();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.background.withValues(alpha: 0.1),
              width: 2,
            ),
          ),
        ),
        Container(
          width: 360,
          height: 360,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                AppColors.background.withValues(alpha: 0.05),
                AppColors.background.withValues(alpha: 0.05),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        // Profile image
        CircleAvatar(
          radius: 170,
          backgroundColor: Colors.transparent,
          backgroundImage: const AssetImage('assets/images/logo.png'),
          onBackgroundImageError: (exception, stackTrace) {
            // Fallback handled by child if needed, but CircleAvatar handles it gracefully usually
          },
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: const DecorationImage(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.cover,
              ),
              color: Colors.grey.shade200, // Fallback color
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          right: 20,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    FontAwesomeIcons.flutter,
                    size: 12,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  'Flutter Expert',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ).animate().fadeIn(delay: 1000.ms, duration: 600.ms).scale(),
        ),
      ],
    ).animate().fadeIn(duration: 800.ms).scale(begin: const Offset(0.9, 0.9));
  }
}
