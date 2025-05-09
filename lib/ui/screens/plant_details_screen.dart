// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:space_app/core/constants/app_colors.dart';
import 'package:space_app/models/planet.dart';

class PlantDetailsScreen extends StatelessWidget {
  final PlanetModel planet;
  static const String routeName = "/planet";

  const PlantDetailsScreen({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.black,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.white),
        title: Text(
          planet.name,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(planet.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Text(
                    planet.name,
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.8),
                          blurRadius: 10,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                planet.title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                planet.about,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.white,
                  height: 1.5,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Details:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoRow(
                      label: 'Distance from Sun:',
                      value: '${planet.distanceFromSun} km'),
                  InfoRow(
                      label: 'Length of Day:',
                      value: '${planet.lengthOfDay} hours'),
                  InfoRow(
                      label: 'Orbital Period:',
                      value: '${planet.orbitalPeriod} Earth years'),
                  InfoRow(label: 'Radius:', value: '${planet.radius} km'),
                  InfoRow(label: 'Mass:', value: '${planet.mass} kg'),
                  InfoRow(label: 'Gravity:', value: '${planet.gravity} m/s²'),
                  InfoRow(
                      label: 'Surface Area:',
                      value: '${planet.surfaceArea} km²'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const InfoRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
