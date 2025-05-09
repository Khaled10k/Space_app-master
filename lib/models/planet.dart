import 'package:space_app/core/constants/app_3d_models.dart';
import 'package:space_app/core/constants/app_images.dart';

class PlanetModel {
  final String name;
  final String image;
  final String modelFile;
  final String title;
  final String about;
  final double distanceFromSun;
  final double lengthOfDay;
  final double orbitalPeriod;
  final double radius;
  final double mass;
  final double gravity;
  final double surfaceArea;

  PlanetModel({
    required this.name,
    required this.image,
    required this.modelFile,
    required this.title,
    required this.about,
    required this.distanceFromSun,
    required this.lengthOfDay,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea,
  });

  static List<PlanetModel> planets = [
    PlanetModel(
      name: 'Sun',
      image: AppImages.sunImage,
      modelFile: App3DModels.sun,
      title: 'The Sun: Our Solar System\'s Star',
      about:
          'The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion.',
      distanceFromSun: 0,
      lengthOfDay: 0,
      orbitalPeriod: 0,
      radius: 695700,
      mass: 1.989e30,
      gravity: 274,
      surfaceArea: 6.09e12,
    ),
    PlanetModel(
      name: 'Mercury',
      image: AppImages.mercuryImage,
      modelFile: App3DModels.mercury,
      title: 'Mercury: The Closest Planet',
      about:
          'Mercury is the smallest planet in our solar system and closest to the Sun. It has a rocky surface with extreme temperatures and a very thin atmosphere.',
      distanceFromSun: 57909227,
      lengthOfDay: 1407.60,
      orbitalPeriod: 0.24,
      radius: 2439.7,
      mass: 3.301e23,
      gravity: 3.7,
      surfaceArea: 7.48e7,
    ),
    PlanetModel(
      name: 'Venus',
      image: AppImages.venusImage,
      modelFile: App3DModels.venus,
      title: 'Venus: Earth\'s Toxic Twin',
      about:
          'Venus is Earth\'s twin in size and composition but is covered in thick clouds of sulfuric acid, making it the hottest planet in the solar system.',
      distanceFromSun: 108209072,
      lengthOfDay: 5832.20,
      orbitalPeriod: 0.62,
      radius: 6051.8,
      mass: 4.867e24,
      gravity: 8.87,
      surfaceArea: 4.60e8,
    ),
    PlanetModel(
      name: 'Earth',
      image: AppImages.earthImage,
      modelFile: App3DModels.earth,
      title: 'Earth: Our Blue Marble',
      about:
          'Earth is the only planet known to support life, with an atmosphere that regulates temperature and protects us from solar radiation.',
      distanceFromSun: 149598026,
      lengthOfDay: 23.93,
      orbitalPeriod: 1.0,
      radius: 6371,
      mass: 5.972e24,
      gravity: 9.81,
      surfaceArea: 5.10e8,
    ),
    PlanetModel(
      name: 'Mars',
      image: AppImages.marsImage,
      modelFile: App3DModels.mars,
      title: 'Mars: The Red Planet',
      about:
          'Mars is a cold, rocky world with a thin atmosphere. It shows signs of ancient rivers and is a key focus for exploring life beyond Earth.',
      distanceFromSun: 227943824,
      lengthOfDay: 24.62,
      orbitalPeriod: 1.88,
      radius: 3389.5,
      mass: 6.39e23,
      gravity: 3.71,
      surfaceArea: 1.45e8,
    ),
    PlanetModel(
      name: 'Jupiter',
      image: AppImages.jupiterImage,
      modelFile: App3DModels.jupiter,
      title: 'Jupiter: The Gas Giant',
      about:
          'Jupiter is the largest planet in the solar system, known for its massive storms, including the Great Red Spot.',
      distanceFromSun: 778547669,
      lengthOfDay: 9.92,
      orbitalPeriod: 11.86,
      radius: 69911,
      mass: 1.898e27,
      gravity: 24.79,
      surfaceArea: 6.21e15,
    ),
    PlanetModel(
      name: 'Saturn',
      image: AppImages.saturnImage,
      modelFile: App3DModels.saturn,
      title: 'Saturn: The Ringed Planet',
      about:
          'Saturn is famous for its stunning rings made of ice and rock, and it has over 80 moons.',
      distanceFromSun: 1426666422,
      lengthOfDay: 10.66,
      orbitalPeriod: 29.46,
      radius: 58232,
      mass: 5.683e26,
      gravity: 10.44,
      surfaceArea: 4.27e15,
    ),
    PlanetModel(
      name: 'Uranus',
      image: AppImages.uranusImage,
      modelFile: App3DModels.uranus,
      title: 'Uranus: The Tilted Planet',
      about:
          'Uranus has a unique axial tilt and a pale blue color due to methane in its atmosphere.',
      distanceFromSun: 2870990000,
      lengthOfDay: 17.24,
      orbitalPeriod: 84.01,
      radius: 25362,
      mass: 8.681e25,
      gravity: 8.69,
      surfaceArea: 8.1e15,
    ),
    PlanetModel(
      name: 'Neptune',
      image: AppImages.neptuneImage,
      modelFile: App3DModels.neptune,
      title: 'Neptune: The Distant World',
      about:
          'Neptune is the farthest planet from the Sun, known for its deep blue color and strong winds.',
      distanceFromSun: 4498252900,
      lengthOfDay: 16.11,
      orbitalPeriod: 164.8,
      radius: 24622,
      mass: 1.024e26,
      gravity: 11.15,
      surfaceArea: 7.65e15,
    ),
  ];
}
