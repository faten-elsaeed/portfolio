import 'package:faten_portfolio/styles.dart';
import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Styles.colorTertiary,
      padding: const EdgeInsets.all(40),
      child: Column(
        children: const [
          Text(
            'Contact Me',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'Email: fatenelsaeed.01@gmail.com',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            'LinkedIn: linkedin.com/in/fatenselbialy/',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
