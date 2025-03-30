// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:spaceproject/main.dart';
import 'package:spaceproject/screens/appbar.dart';
import 'package:spaceproject/screens/explorescreen.dart';

class solarSystem extends StatefulWidget {
  const solarSystem({super.key});

  @override
  State<solarSystem> createState() => _solarSystemState();
}

class _solarSystemState extends State<solarSystem> {
  final List<Map<String, String>> planets = [
    {"name": "Earth", "image": "assets/earth.png"},
    {"name": "Mars", "image": "assets/mars.png"},
    {"name": "Jupiter", "image": "assets/jupiter.png"},
    {"name": "Saturn", "image": "assets/saturn.png"},
    {"name": "Uranus", "image": "assets/uranus.png"},
    {"name": "Neptune", "image": "assets/neptune.png"},
    {"name": "venus", "image": "assets/venus.png"},
    {"name": "sun", "image": "assets/sun.png"},
    {"name": "Mercury", "image": "assets/mercury.png"},
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBarWidget(
        text: 'Which planet\nwould you like to explore?',
        isExplain: false,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 340,
                width: 340,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(planets[index]["image"]!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                child: Row(
                  children: [
                    planetChangerButtonsBuilder(arrowIsRight: false),
                    Spacer(),
                    Text(
                      planets[index]["name"]!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    planetChangerButtonsBuilder(arrowIsRight: true),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 60,
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExploreScreen(
                                  index: index, planets: planets)));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Explore",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: white,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_rounded,
                          size: 28,
                          color: white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  planetChangerButtonsBuilder({required bool arrowIsRight}) => ElevatedButton(
      onPressed: () {
        setState(() {
          if (arrowIsRight) {
            index = (index + 1) % planets.length;
          } else {
            index = (index - 1 + planets.length) % planets.length;
          }
        });
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(50, 50),
        backgroundColor: Colors.red,
        shape: CircleBorder(
          side: BorderSide(color: Colors.red),
        ),
      ),
      child: Center(
        child: Icon(
          arrowIsRight ? Icons.arrow_forward_rounded : Icons.arrow_back_rounded,
          size: 28,
          color: Colors.white,
        ),
      ));
}
