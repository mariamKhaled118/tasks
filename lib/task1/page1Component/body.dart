import 'package:flutter/material.dart';
import 'KindOfFeelings.dart'; // Make sure you import the necessary files
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card.dart';

class PageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double widthOfPage = constraints.maxWidth;
        double spaces = widthOfPage / 20;
        return ListView.builder(
          itemCount: 1, // Replace with your actual item count
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: spaces * 1.5,vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome back, Afreen!',
                    style: GoogleFonts.robotoSlab(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 10), // Add spacing between text
                  Text(
                    'How are you feeling today?',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 25), // Add spacing between text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FeelWidget(
                        feelIcon: FontAwesomeIcons.yinYang,
                        name: 'calm',
                        sWidth: widthOfPage / 6,
                      ),
                      FeelWidget(
                        feelIcon: FontAwesomeIcons.wind,
                        name: 'Relax',
                        sWidth: widthOfPage / 6,
                      ),
                      FeelWidget(
                        feelIcon: Icons.self_improvement_rounded,
                        name: 'Focus',
                        sWidth: widthOfPage / 6,
                      ),
                      FeelWidget(
                        feelIcon: FontAwesomeIcons.phoenixSquadron,
                        name: 'anxious',
                        sWidth: widthOfPage / 6,
                      ),
                    ],
                  ),
                  SizedBox(height: 25), // Add spacing between text

                  n(
                    des: 'Techniques, Benefits, and a Beginner\'s How-To',
                    head: 'Meditation 101',
                    imagep: 'assets/card11.png',
                  ),

                  SizedBox(height: 30), // Add spacing between text
                  n(
                    des: 'Basics of Yoga for Beginners or Experienced Professionals',
                    head: 'Cardio meditation',
                    imagep: 'assets/card11.png',
                  ),
                  SizedBox(height: 40), // Add spacing between text
                  n(
                    des: 'Basics of Yoga for Beginners or Experienced Professionals',
                    head: 'Cardio meditation',
                    imagep: 'assets/card22.png',
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
