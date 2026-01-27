import 'package:flutter/material.dart';
import '../../home/presentation/sections/footer.dart';
import 'sections/contact_section.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [ContactSection(), Footer()]),
    );
  }
}
