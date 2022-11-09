import 'package:enum_to_string/enum_to_string.dart';


enum MyPage{
  curries,

  //
  italian,
}

enum Dish{
  //Italian
  pbBolognese, pbMargherita, pbBasil, pbQuattroStagioni,
}

enum Curries{
  pbKorma, pbSweet, pbMedium, pbHot
}

/*
enum Curries{

  const String homePath = '/curries';
  final List<String> curryTypes = [
    'pbKorma', 'pbSweet', 'pbMedium', 'pbHot'
  ];

  indian(homePath: '/curries-indian')
  const Curries({
    required this.curryHomePath,
    required this.curryTypes,

  });
}
*/

enum PlanetType { terrestrial, gas, ice }

/// Enum that enumerates the different planets in our solar system
/// and some of their properties.
enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  // ···
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

  /// A constant generating constructor
  const Planet(
      {required this.planetType, required this.moons, required this.hasRings});

  /// All instance variables are final
  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  /// Enhanced enums support getters and other methods
  bool get isGiant =>
      planetType == PlanetType.gas || planetType == PlanetType.ice;
}
