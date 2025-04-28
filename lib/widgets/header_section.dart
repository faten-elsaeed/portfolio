import 'package:faten_portfolio/styles.dart';
import 'package:faten_portfolio/widgets/custom_animated_list_view.dart';
import 'package:faten_portfolio/widgets/info_column.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      padding: const EdgeInsets.only(
        left: 120,
        top: 80,
        bottom: 80,
        right: 120,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/pattern.png'),
          fit: BoxFit.cover,
          opacity: 0.35,
        ),
        color: Styles.colorPrimary,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomAnimatedListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Text(
                      'Faten Elsaeed',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Mobile Applications Developer | Flutter',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    // SizedBox(height: 60),
                    // Row(
                    //   children: [
                    //     Flexible(
                    //       child: InfoColumn(
                    //         title: 'Currently',
                    //         content: 'Flutter Developer at Technoraft',
                    //       ),
                    //     ),
                    //     SizedBox(width: 60),
                    //     Flexible(
                    //       child: InfoColumn(
                    //         title: 'Location',
                    //         content: 'Mansoura, Egypt',
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    SizedBox(height: 30),
                    Divider(color: Colors.white38),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Styles.colorSecondary,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Text(
                            'About Me',
                            style: TextStyle(
                              color: Styles.colorPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'I am a Flutter developer passionate about building beautiful, functional apps for mobile.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
              ),

              if (width > 800)
                Container(
                  height: MediaQuery.of(context).size.width * 0.28,
                  width: MediaQuery.of(context).size.width * 0.18,
                  decoration: BoxDecoration(
                    border: Border.all(color: Styles.colorTertiary, width: 1),
                    borderRadius: BorderRadius.circular(300),
                    image: DecorationImage(
                      image: AssetImage('assets/faten.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  foregroundDecoration: BoxDecoration(
                    border: Border.all(color: Styles.colorTertiary, width: 1),
                    borderRadius: BorderRadius.circular(300),
                    gradient: LinearGradient(
                      colors: [
                        Styles.colorPrimary.withValues(alpha: 0),
                        Styles.colorPrimary,
                      ],
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
