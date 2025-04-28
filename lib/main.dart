import 'package:faten_portfolio/styles.dart';
import 'package:flutter/material.dart';

import 'screens/portfolio_home_page.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Styles.materialColor(Styles.colorPrimary),
      ),
      home: const PortfolioHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
