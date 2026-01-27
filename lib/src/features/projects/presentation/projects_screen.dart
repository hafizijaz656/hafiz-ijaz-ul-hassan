import 'package:flutter/material.dart';
import '../../home/presentation/sections/cta_section.dart';
import '../../home/presentation/sections/footer.dart';
import 'sections/featured_projects_section.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [FeaturedProjectsSection(), CtaSection(), Footer()],
      ),
    );
  }
}
