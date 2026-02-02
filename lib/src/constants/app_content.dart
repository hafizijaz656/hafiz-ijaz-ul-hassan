import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppContent {
  static const List<ExpertiseItem> expertise = [
    ExpertiseItem(
      icon: Icons.smartphone,
      title: 'Mobile Development',
      description:
          'Crafting pixel-perfect cross-platform apps with smooth animations and native-like performance.',
      items: [
        'Flutter & Dart',
        'Getx, Provider, Riverpod',
        'Firebase Integration',
        'RESTful APIs',
      ],
      delay: 0,
    ),
    ExpertiseItem(
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
    ExpertiseItem(
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
    ExpertiseItem(
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
  ];

  static const List<SkillItem> skills = [
    SkillItem(label: 'FLUTTER & DART', percentage: 0.95),
    SkillItem(label: 'ANDROID (JAVA/KOTLIN)', percentage: 0.90),
    SkillItem(label: 'REST APIs & FIREBASE', percentage: 0.92),
    SkillItem(label: 'GOOGLE MAPS & LOCATION', percentage: 0.88),
    SkillItem(label: 'STATE MANAGEMENT (BLOC/RIVERPOD)', percentage: 0.92),
    SkillItem(label: 'FIREBASE & BACKEND INTEGRATION', percentage: 0.88),
    SkillItem(label: 'CLEAN ARCHITECTURE / SOLID', percentage: 0.90),
  ];

  static final List<Project> projects = [
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
      iosUrl:
          'https://apps.apple.com/pk/app/othership-workplace-scheduler/id6449196566',
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
      iosUrl:
          'https://apps.apple.com/pk/app/othership-room-display/id6479629590',
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
      iosUrl:
          'https://apps.apple.com/pk/app/othership-visitor-management/id6741065734',
      imageUrl:
          'https://play-lh.googleusercontent.com/Jq1HRhD6tySH2KDwnUhQrqkxd2CiUrrWzWXY4Os3jiW3hQ9ehtPqAHb9hq-3jc7OUww',
    ),
    Project(
      title: 'BRG Loopers',
      description:
          'A secure and efficient platform for official loopers to manage daily work activities, shifts, and rides.',
      tags: ['FLUTTER', 'DART', 'IOS'],
      imageColor: const Color(0xFF1E88E5),
      category: 'Flutter',
      iosUrl: 'https://apps.apple.com/pk/app/brg-loopers/id6752260397',
    ),
    Project(
      title: 'The Loopers',
      description:
          'The Loopers is the epitome of luxury transportation in the UAE, offering a premium experience that redefines the way you travel.',
      tags: ['FLUTTER', 'DART', 'IOS'],
      imageColor: const Color(0xFFD32F2F),
      category: 'Flutter',
      iosUrl: 'https://apps.apple.com/us/app/the-loopers/id6752260346',
    ),
    Project(
      title: 'Retwho',
      description:
          'A dynamic B2B platform designed to connect wholesalers and retailers, facilitating a seamless and efficient flow of goods.',
      tags: ['FLUTTER', 'DART', 'B2B'],
      imageColor: const Color(0xFF009688),
      category: 'Flutter',
      androidUrl:
          'https://play.google.com/store/apps/details?id=com.retwho.aizaf.group&pcampaignid=web_share',
      iosUrl: 'https://apps.apple.com/us/app/retwho/id6593708926',
    ),
    Project(
      title: 'Forpartum',
      description:
          'Forpartum empowers mothers with personalized care, data-driven insights, and essential resources to support every stage of their postpartum journey, offering unmatched tools to help mothers heal, recover, and thrive.',
      tags: ['FLUTTER', 'DART', 'WELLNESS'],
      imageColor: const Color(0xFFEC407A),
      category: 'Flutter',
      androidUrl:
          'https://play.google.com/store/apps/details?id=com.solinovation.forpartum&pcampaignid=web_share',
      iosUrl:
          'https://apps.apple.com/us/app/forpartum-wellness-for-moms/id6738465336',
    ),
    Project(
      title: 'Meal Planner : Recipe Book',
      description:
          'Your AI Personal Kitchen Assistant! Scan ingredients for instant recipes and get personalized meal plans fitting your health goals. The ultimate solution for smarter cooking and healthier living.',
      tags: ['FLUTTER', 'DART', 'LIFESTYLE'],
      imageColor: const Color(0xFF66BB6A),
      category: 'Flutter',
      iosUrl:
          'https://apps.apple.com/us/app/ai-meal-planner-recipe-book/id6747282317',
    ),
    Project(
      title: 'AI Story Generator ~ Novel AI',
      description:
          'Unleash Your Inner Story! Let AI Turn Your Emotions Into Poetry. Your personal poetry assistant for generating powerful, emotional, and creative poems in seconds.',
      tags: ['FLUTTER', 'DART', 'AI'],
      imageColor: const Color(0xFFAB47BC),
      category: 'Flutter',
      androidUrl:
          'https://play.google.com/store/apps/details?id=com.solinovation.poemai',
      iosUrl:
          'https://apps.apple.com/us/app/ai-story-generator-novel-ai/id6746508816',
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
}

class ExpertiseItem {
  final IconData icon;
  final String title;
  final String description;
  final List<String> items;
  final int delay;

  const ExpertiseItem({
    required this.icon,
    required this.title,
    required this.description,
    required this.items,
    required this.delay,
  });
}

class SkillItem {
  final String label;
  final double percentage;

  const SkillItem({required this.label, required this.percentage});
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
