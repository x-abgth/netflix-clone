import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/screens/welcome_screen/sections/second_section/widgets/netflix_tv_widget.dart';

class SecondSection extends StatelessWidget {
  const SecondSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Container(
      height: _size.height / 1.5,
      padding:
          EdgeInsets.symmetric(vertical: 24.0, horizontal: _size.width * 0.09),
      color: Colors.black,
      child: Row(
        // direction: Axis.vertical,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(right: 100),
              width: _size.width / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Enjoy your TV.",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Watch on smart TVs, PlayStation, Xbox, Chromecast, Apple TV, Blu-ray players and more.",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 24),
                    ),
                  )
                ],
              ),
            ),
          ),
          const NetflixTvWidget(),
        ],
      ),
    );
  }
}
