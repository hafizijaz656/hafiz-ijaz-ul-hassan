import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';
import 'responsive_layout.dart';

class ScaffoldWithNavigation extends StatelessWidget {
  const ScaffoldWithNavigation({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: _MobileAndTabletScaffold(
        navigationShell: navigationShell,
        onDestinationSelected: _goBranch,
      ),
      tabletBody: _MobileAndTabletScaffold(
        navigationShell: navigationShell,
        onDestinationSelected: _goBranch,
      ),
      desktopBody: _DesktopScaffold(
        navigationShell: navigationShell,
        onDestinationSelected: _goBranch,
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(
            FontAwesomeIcons.code,
            color: Colors.white,
            size: 20,
          ),
        ),
        const SizedBox(width: 8),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
            children: [
              const TextSpan(text: 'Hafiz'),
              TextSpan(
                text: '.dev',
                style: TextStyle(color: AppColors.primary),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _MobileAndTabletScaffold extends StatelessWidget {
  const _MobileAndTabletScaffold({
    required this.navigationShell,
    required this.onDestinationSelected,
  });

  final StatefulNavigationShell navigationShell;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const _Logo(),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.textPrimary),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: 0.1),
              ),
              child: const Center(child: _Logo()),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _DrawerItem(
                    icon: Icons.home_outlined,
                    selectedIcon: Icons.home,
                    label: 'Home',
                    isSelected: navigationShell.currentIndex == 0,
                    onTap: () {
                      onDestinationSelected(0);
                      Navigator.pop(context);
                    },
                  ),
                  _DrawerItem(
                    icon: Icons.person_outline,
                    selectedIcon: Icons.person,
                    label: 'About',
                    isSelected: navigationShell.currentIndex == 1,
                    onTap: () {
                      onDestinationSelected(1);
                      Navigator.pop(context);
                    },
                  ),
                  _DrawerItem(
                    icon: Icons.work_outline,
                    selectedIcon: Icons.work,
                    label: 'Projects',
                    isSelected: navigationShell.currentIndex == 2,
                    onTap: () {
                      onDestinationSelected(2);
                      Navigator.pop(context);
                    },
                  ),
                  _DrawerItem(
                    icon: Icons.history_outlined,
                    selectedIcon: Icons.history,
                    label: 'Experience',
                    isSelected: navigationShell.currentIndex == 3,
                    onTap: () {
                      onDestinationSelected(3);
                      Navigator.pop(context);
                    },
                  ),
                  _DrawerItem(
                    icon: Icons.mail_outline,
                    selectedIcon: Icons.mail,
                    label: 'Contact',
                    isSelected: navigationShell.currentIndex == 4,
                    onTap: () {
                      onDestinationSelected(4);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: _CVDownloadButton(),
            ),
          ],
        ),
      ),
      body: navigationShell,
    );
  }
}

class _DrawerItem extends StatelessWidget {
  const _DrawerItem({
    required this.icon,
    required this.selectedIcon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final IconData icon;
  final IconData selectedIcon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        isSelected ? selectedIcon : icon,
        color: isSelected ? AppColors.primary : AppColors.textPrimary,
      ),
      title: Text(
        label,
        style: TextStyle(
          color: isSelected ? AppColors.primary : AppColors.textPrimary,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      selected: isSelected,
      selectedTileColor: AppColors.primary.withValues(alpha: 0.1),
      onTap: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    );
  }
}

class _CVDownloadButton extends StatelessWidget {
  const _CVDownloadButton();

  Future<void> _downloadCV() async {
    final Uri url = Uri.parse(
      'assets/assets/docs/hafiz%20ijaz%20ul%20hassan-1.pdf',
    );
    if (!await launchUrl(url)) {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: _downloadCV,
        icon: const Icon(Icons.download, size: 18),
        label: const Text('Download CV'),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12),
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}

class _DesktopScaffold extends StatelessWidget {
  const _DesktopScaffold({
    required this.navigationShell,
    required this.onDestinationSelected,
  });

  final StatefulNavigationShell navigationShell;
  final ValueChanged<int> onDestinationSelected;

  Future<void> _downloadCV() async {
    final Uri url = Uri.parse('/assets/assets/docs/hafiz_ijaz_ul_hassan_CV.pdf');
    if (!await launchUrl(url)) {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.p48,
              vertical: AppSizes.p24,
            ),
            color: Colors.white,
            child: Row(
              children: [
                const _Logo(),
                const Spacer(),
                _DesktopNavItem(
                  title: 'Home',
                  isSelected: navigationShell.currentIndex == 0,
                  onTap: () => onDestinationSelected(0),
                ),
                _DesktopNavItem(
                  title: 'About',
                  isSelected: navigationShell.currentIndex == 1,
                  onTap: () => onDestinationSelected(1),
                ),
                _DesktopNavItem(
                  title: 'Projects',
                  isSelected: navigationShell.currentIndex == 2,
                  onTap: () => onDestinationSelected(2),
                ),
                _DesktopNavItem(
                  title: 'Experience',
                  isSelected: navigationShell.currentIndex == 3,
                  onTap: () => onDestinationSelected(3),
                ),
                _DesktopNavItem(
                  title: 'Contact',
                  isSelected: navigationShell.currentIndex == 4,
                  onTap: () => onDestinationSelected(4),
                ),
                const SizedBox(width: AppSizes.p24),
                ElevatedButton(
                  onPressed: _downloadCV,
                  child: const Text('Download CV'),
                ),
              ],
            ),
          ),
          Expanded(child: navigationShell),
        ],
      ),
    );
  }
}

class _DesktopNavItem extends StatelessWidget {
  const _DesktopNavItem({
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            color: isSelected ? AppColors.primary : AppColors.textPrimary,
          ),
        ),
      ),
    );
  }
}
