import 'package:faten_portfolio/styles.dart';
import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String projectName;

  const ProjectCard({super.key, required this.projectName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return SimpleDialog(
              backgroundColor: Colors.white,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    'assets/projects/$projectName.png',
                    width: 500,
                    height: 500,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        projectName,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.android, color: Styles.colorPrimary, size: 30),
                      SizedBox(width: 30),
                      Icon(Icons.apple, color: Styles.colorPrimary, size: 30),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage('assets/projects/$projectName.png'),
                fit: BoxFit.cover,
              ),
            ),
            foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [Colors.black.withValues(alpha: 0), Colors.black],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
                stops: [0.1, 1],
              ),
            ),
            width: 300,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              projectName,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
