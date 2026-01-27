import 'package:flutter/material.dart';
import '../../home/presentation/sections/cta_section.dart';
import '../../home/presentation/sections/footer.dart';
import 'sections/professional_journey_section.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [ProfessionalJourneySection(), CtaSection(), Footer()],
      ),
    );
  }
}
