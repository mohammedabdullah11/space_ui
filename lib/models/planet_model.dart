import 'package:space_ui/styles/app_iamges.dart';
import 'package:space_ui/styles/iamges_3d.dart';

class PlanetModel {
  final String name;
  final String image;
  String? image3d;
  final String description;
  final String info;
  final String distanceFromSun;
  final String lengthOfDay;
  final String orbitalPeriod;
  final String radius;
  final String mass;
  final String gravity;
  final String surfaceArea;

  PlanetModel({
    required this.name,
    required this.image,
    required this.info,
    required this.description,
    this.image3d,
    required this.distanceFromSun,
    required this.lengthOfDay,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea,
  });
}

List<PlanetModel>planets = [
    PlanetModel(
    name: "Earth",
    image: AppIamges.earth,
    image3d:Images3D.earth,
    description:
        "Earth is the only known planet to support life. Its atmosphere, liquid water, and distance from the Sun create ideal conditions for living organisms.",
    info: 'Earth: Our Blue Marble',
    distanceFromSun: "149,598,026 km",
    lengthOfDay: "23.93 hours",
    orbitalPeriod: "365 days",
    radius: "6371 km",
    mass: "5.972 × 10^24 kg",
    gravity: "9.81 m/s²",
    surfaceArea: "5.10 × 10^8 km²",
  ),


  PlanetModel(
    name: "Mercury",
    image:AppIamges.mercry,
    image3d: Images3D.mercury,
    description:
        "Mercury is the smallest planet in the Solar System and the closest to the Sun. It has a very thin atmosphere and surface temperatures vary greatly.",
    info: 'Mercury: The Swift Planet',
    distanceFromSun: "57,910,000 km",
    lengthOfDay: "1407.6 hours",
    orbitalPeriod: "88 days",
    radius: "2439.7 km",
    mass: "3.3011 × 10^23 kg",
    gravity: "3.7 m/s²",
    surfaceArea: "7.48 × 10^7 km²",
  ),
  // PlanetModel(
  //   name: "Venus",
  //   image: AppIamges.venus,
  //   image3d: Images3D.venus,
  //   description:
  //       "Venus is often called Earth’s twin because of its similar size and composition. However, it has a thick atmosphere that traps heat, making it the hottest planet.",
  //   info: 'Venus: Earth’s Twin',

  //   distanceFromSun: "108,200,000 km",
  //   lengthOfDay: "5832.5 hours",
  //   orbitalPeriod: "225 days",
  //   radius: "6051.8 km",
  //   mass: "4.8675 × 10^24 kg",
  //   gravity: "8.87 m/s²",
  //   surfaceArea: "4.60 × 10^8 km²",
  // ),

  PlanetModel(
    name: "Mars",
    image: AppIamges.mars,
    image3d: Images3D.mars,
    description:
        "Mars is known as the Red Planet due to its reddish appearance. It has the largest volcano in the Solar System, Olympus Mons, and polar ice caps.",
    info: 'Mars: The Red Planet',
    distanceFromSun: "227,900,000 km",
    lengthOfDay: "24.6 hours",
    orbitalPeriod: "687 days",
    radius: "3389.5 km",
    mass: "6.4171 × 10^23 kg",
    gravity: "3.71 m/s²",
    surfaceArea: "1.44 × 10^8 km²",
  ),
  PlanetModel(
    name: "Jupiter",
    image: AppIamges.jupiter,
    image3d: Images3D.jupiter,
    description:
        "Jupiter is the largest planet in the Solar System. It is a gas giant with a strong magnetic field and at least 79 moons, including Ganymede, the largest moon.",
    info: 'Jupiter: The Giant Planet',
    distanceFromSun: "778,500,000 km",
    lengthOfDay: "9.9 hours",
    orbitalPeriod: "12 years",
    radius: "69,911 km",
    mass: "1.898 × 10^27 kg",
    gravity: "24.79 m/s²",
    surfaceArea: "6.14 × 10^10 km²",
  ),
  PlanetModel(
    name: "Saturn",
    image:  AppIamges.saturn,
    image3d:  Images3D.saturn,
    description:
        "Saturn is famous for its stunning ring system made of ice and rock particles. It is a gas giant with dozens of moons, including Titan, larger than Mercury.",
    info: 'Saturn: The Ringed Planet',
    distanceFromSun: "1,429,400,000 km",
    lengthOfDay: "10.7 hours",
    orbitalPeriod: "29 years",
    radius: "58,232 km",
    mass: "5.683 × 10^26 kg",
    gravity: "10.44 m/s²",
    surfaceArea: "4.27 × 10^10 km²",
  ),
  PlanetModel(
    name: "Uranus",
    image: AppIamges.uranus,
    image3d: Images3D.uranus,
    description:
        "Uranus is an ice giant with a blue-green color due to methane in its atmosphere. It rotates on its side, making its seasons last over 20 years.",
    info: 'Uranus: The Sideways Planet',
    distanceFromSun: "2,870,990,000 km",
    lengthOfDay: "17.2 hours",
    orbitalPeriod: "84 years",
    radius: "25,362 km",
    mass: "8.681 × 10^25 kg",
    gravity: "8.69 m/s²",
    surfaceArea: "8.083 × 10^9 km²",
  ),
  PlanetModel(
    name: "Neptune",
    image: AppIamges.neptune,
    image3d: Images3D.neptune,
    description:
        "Neptune is the farthest planet from the Sun and is known for its strong winds and dark storms. It has a deep blue color due to methane in its atmosphere.",
    info: 'Neptune: The Windy Planet',
    distanceFromSun: "4,504,000,000 km",
    lengthOfDay: "16.1 hours",
    orbitalPeriod: "165 years",
    radius: "24,622 km",
    mass: "1.024 × 10^26 kg",
    gravity: "11.15 m/s²",
    surfaceArea: "7.64 × 10^9 km²",
  ),
];