import 'package:flutter/material.dart';
import 'sections/expertise_section.dart';
import 'sections/footer.dart';
import 'sections/hero_section.dart';
import 'sections/home_featured_projects_section.dart';
import 'sections/pub_dev_section.dart';
import 'sections/skills_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HeroSection(),
          ExpertiseSection(),
          SkillsSection(),
          HomeFeaturedProjectsSection(),
          PubDevSection(),
          Footer(),
        ],
      ),
    );
  }
}
