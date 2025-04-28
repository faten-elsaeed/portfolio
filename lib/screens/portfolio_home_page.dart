import 'package:faten_portfolio/styles.dart';
import 'package:faten_portfolio/widgets/contact_section.dart';
import 'package:faten_portfolio/widgets/header_section.dart';
import 'package:faten_portfolio/widgets/projects_section.dart';
import 'package:flutter/material.dart';

class PortfolioHomePage extends StatelessWidget {
  const PortfolioHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.colorSecondary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderSection(),
            const ProjectsSection(),
            const ContactSection(),
            Container(
              padding: const EdgeInsets.all(20),
              // child: const Text('© 2025 Faten Elsaeed'),
            ),
          ],
        ),
      ),
    );
  }
}
