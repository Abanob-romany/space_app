// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:spaceproject/screens/appbar.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key, required this.index, required this.planets});

  final int index;
  final List<Map<String, String>> planets;

  final List<String> appBarText = [
    'Earth: Our Blue Marble',
    'Mars: The Red Planet',
    'Jupiter: The Gas Giant',
    'Saturn: The Ringed Planet',
    'Uranus: The Tilted Planet',
    'Neptune: The Distant World',
    "Venus: Earth's Toxic Twin",
    "The Sun: Our Solar System's Star",
    'Mercury: The Closest Planet'
  ];

  final List<Map<String, String>> planetinfo = [
    {
      "name": "Earth",
      "discription": "helps to regulate temperature and weather patterns.\n\n"
          "Distance from Sun (km): 149,598,026\n\n"
          "Length of Day (hours): 23.93\n\n"
          "Orbital Period (Earth years): 1\n\n"
          "Radius (km): 6,371\n\n"
          "Mass (kg): 5.972 × 10²⁴\n\n"
          "Gravity (m/s²): 9.81\n\n"
          "Surface Area (km²): 5.10 × 10⁸\n\n"
          "Moons: 1 (The Moon)"
    },
    {
      "name": "mars",
      "discription": "Distance from Sun (km): 227,943,824\n\n"
          "Length of Day (hours): 24.6\n\n"
          "Orbital Period (Earth years): 1.88\n\n"
          "Radius (km): 3,389.5\n\n"
          "Mass (kg): 6.417 × 10²³\n\n"
          "Gravity (m/s²): 3.71\n\n"
          "Surface Temperature (°C): -87 to -5\n\n"
          "Moons: 2 (Phobos & Deimos)"
    },
    {
      "name": "Jupiter",
      "discription": "Distance from Sun (km): 778,340,821\n\n"
          "Length of Day (hours): 9.93\n\n"
          "Orbital Period (Earth years): 11.86\n\n"
          "Radius (km): 69,911\n\n"
          "Mass (kg): 1.898 × 10²⁷\n\n"
          "Gravity (m/s²): 24.79\n\n"
          "Surface Temperature (°C): -145\n\n"
          "Moons: 95+ (including Ganymede, the largest moon in the solar system)"
    },
    {
      "name": "Saturn",
      "discription": "Distance from Sun (km): 1,426,666,422\n\n"
          "Length of Day (hours): 10.7\n\n"
          "Orbital Period (Earth years): 29.45\n\n"
          "Radius (km): 58,232\n\n"
          "Mass (kg): 5.683 × 10²⁶\n\n"
          "Gravity (m/s²): 10.44\n\n"
          "Surface Temperature (°C): -178\n\n"
          "Moons: 146+ (including Titan, larger than Mercury)"
    },
    {
      "name": "Uranus",
      "discription": "Distance from Sun (km): 2,870,658,186\n\n"
          "Length of Day (hours): 17.2\n\n"
          "Orbital Period (Earth years): 84\n\n"
          "Radius (km): 25,362\n\n"
          "Mass (kg): 8.681 × 10²⁵\n\n"
          "Gravity (m/s²): 8.69\n\n"
          "Surface Temperature (°C): -224\n\n"
          "Moons: 27 (including Titania & Oberon)"
    },
    {
      "name": "Neptune",
      "discription": "Distance from Sun (km): 4,498,396,441\n\n"
          "Length of Day (hours): 16.1\n\n"
          "Orbital Period (Earth years): 164.8\n\n"
          "Radius (km): 24,622\n\n"
          "Mass (kg): 1.024 × 10²⁶\n\n"
          "Gravity (m/s²): 11.15\n\n"
          "Surface Temperature (°C): -214\n\n"
          "Moons: 14 (including Triton, which orbits backward)"
    },
    {
      "name": "Venus",
      "discription": "Distance from Sun (km): 108,209,475\n\n"
          "Length of Day (hours): 5,832\n\n"
          "Orbital Period (Earth years): 0.62\n\n"
          "Radius (km): 6,051.8\n\n"
          "Mass (kg): 4.867 × 10²⁴\n\n"
          "Gravity (m/s²): 8.87\n\n"
          "Surface Temperature (°C): 462\n\n"
          "Moons: 0"
    },
    {
      "name": "Mercury",
      "discription": "Distance from Sun (km): 57,909,227\n\n"
          "Length of Day (hours): 1,408\n\n"
          "Orbital Period (Earth years): 0.24\n\n"
          "Radius (km): 2,439.7\n\n"
          "Mass (kg): 3.285 × 10²³\n\n"
          "Gravity (m/s²): 3.7\n\n"
          "Surface Temperature (°C): -173 to 427\n\n"
          "Moons: 0"
    },
    {
      "name": "the sun",
      "discription": "Distance from Sun (km): 57,909,227\n\n"
          "Length of Day (hours): 1,408\n\n"
          "Orbital Period (Earth years): 0.24\n\n"
          "Radius (km): 2,439.7\n\n"
          "Mass (kg): 3.285 × 10²³\n\n"
          "Gravity (m/s²): 3.7\n\n"
          "Surface Temperature (°C): -173 to 427\n\n"
          "Moons: 0"
    },
  ];
  final List<Map<String, String>> planetDescriptions = [
    {
      "name": "Earth",
      "discription": "Earth is the only known planet in the universe that supports life. Its unique"
          "combination of factors, including liquid water, a breathable atmosphere, and a"
          "suitable distance from the Sun, has created the ideal conditions for the development"
          "of complex organisms. Earth's magnetic field protects it from harmful solar radiation,"
          "and its atmosphere helps to regulate temperature and weather patterns.\n\n "
    },
    {
      "name": "mars",
      "discription": "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a"
          ", rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and"
          "evidence of past volcanic activity, suggesting that it once had a warmer, wetter"
          "climate. Mars is a prime target for exploration due to its potential for past or present"
          "life, and NASA's Perseverance rover is currently searching for signs of ancient"
          "microbial life on the planet's surface.\n\n"
    },
    {
      "name": "Jupiter",
      "discription": "Jupiter is the largest planet in our solar system, a gas giant composed primarily of"
          "hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for"
          "centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic"
          "field and numerous moons, including Europa, which is believed to have a subsurface"
          "ocean that could potentially harbor life.\n\n"
    },
    {
      "name": "Saturn",
      "discription": "Saturn is best known for its spectacular rings, which are composed of countless  "
          "particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings "
          "and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick "
          "atmosphere and is the only known celestial body outside of Earth with liquid lakes "
          "and rivers.\n\n"
    },
    {
      "name": "Uranus",
      "discription":
          """" Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is
  surrounded by faint rings and has numerous moons, including Miranda, known for its
  chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and
  methane, giving it a pale blue color.\n\n"""
              ""
    },
    {
      "name": "Neptune",
      "discription":
          """"  Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere
  is similar to Uranus, but it is a deeper blue color due to the presence of methane.
  Neptune has several moons, including Triton, which orbits the planet in a retrograde
  direction and is believed to be a captured Kuiper Belt object.\n\n"""
              ""
    },
    {
      "name": "Venus",
      "discription": "Venus is often referred to as Earth's twin due to its similar size and composition."
          "However, its thick atmosphere, composed primarily of carbon dioxide, traps heat,"
          "making it the hottest planet in our solar system. This greenhouse effect has created"
          "a hostile environment with temperatures hot enough to melt lead. Venus is also"
          "shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a"
          "yellowish appearance.\n\n"
    },
    {
      "name": "mercury",
      "discription": "The Sun is the heart of our solar system, a massive ball of plasma that provides"
          "heat, light, and energy to everything within its gravitational pull. Its immense size and"
          "temperature are fueled by nuclear fusion, a process that combines hydrogen atoms"
          "into helium, releasing vast amounts of energy. The Sun's magnetic field, which is"
          "constantly changing, influences solar activity like sunspots and solar flares, affecting"
          "space weather and potentially disrupting Earth-based technologies.\n\n"
    },
    {
      "name": "the sun",
      "discription": "The Sun is the heart of our solar system, a massive ball of plasma that provides"
          "heat, light, and energy to everything within its gravitational pull. Its immense size and"
          "temperature are fueled by nuclear fusion, a process that combines hydrogen atoms"
          "into helium, releasing vast amounts of energy. The Sun's magnetic field, which is"
          "constantly changing, influences solar activity like sunspots and solar flares, affecting"
          "space weather and potentially disrupting Earth-based technologies.\n\n"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBarWidget(
        text: '${appBarText[index]} ',
        isExplain: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(planets[index]["image"]!),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "About",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                planetDescriptions[index]["discription"]!,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
                textAlign: TextAlign.start,
                softWrap: true,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(
                      planetinfo[index]["discription"]!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.start,
                      softWrap: true,
                      overflow:
                          TextOverflow.visible, // Ensures text is fully shown
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
