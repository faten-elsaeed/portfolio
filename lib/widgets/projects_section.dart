import 'package:faten_portfolio/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      'Ace Hardware Kuwait',
      'Tartil Online',
      'Chique Bouttique',
      'Chique Bouttique Admin',
      'Three Academy',
      'Qanoony Pro',
      'IEL Law Firm',
      'Legal Advice',
      'IDA Academy',
      'Amiaal Delivery Boy',
      'Amiaal Store',
      'Arab Maker Academy',
      'Banhawy ENT',
      'Makanty',
      'MedClinic',
      'Mosbah Alkerba Firm',
      'Yuki Magic',
    ];

    return Container(
      padding: const EdgeInsets.only(
        left: 100,
        top: 40,
        bottom: 80,
        right: 100,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/pattern.png'),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
          colorFilter: ColorFilter.mode(
            Styles.colorPrimary.withValues(alpha: 0.5),
            BlendMode.srcIn,
          ),
        ),
        color: Styles.colorSecondary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Selected Work',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: List.generate(projects.length, (index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                columnCount: 2,
                child: FadeInAnimation(
                  duration: const Duration(milliseconds: 2000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  child: ScaleAnimation(
                    duration: const Duration(milliseconds: 3000),
                    curve: Curves.fastLinearToSlowEaseIn,
                    child: ProjectCard(projectName: projects[index]),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
