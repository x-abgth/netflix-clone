import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/screens/welcome_screen/sections/first_section/first_section.dart';
import 'package:netflix_clone/presentation/screens/welcome_screen/sections/second_section/second_section.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  final Container sectionDivider = Container(
    color: Colors.white10,
    height: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          const FirstSection(),
          sectionDivider,
          const SecondSection(),
          sectionDivider,
          const SecondSection(),
          sectionDivider,
          const SecondSection(),
        ],
      ),
    );
  }
}
