import 'package:flutter/material.dart';

class InfoColumn extends StatelessWidget {
  const InfoColumn({super.key, required this.title, required this.content});

  final String title, content;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),
        Text(
         content,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
