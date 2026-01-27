import 'package:flutter/material.dart';
import '../../home/presentation/sections/cta_section.dart';
import '../../home/presentation/sections/footer.dart';
import 'sections/about_me_section.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [AboutMeSection(), CtaSection(), Footer()]),
    );
  }
}
