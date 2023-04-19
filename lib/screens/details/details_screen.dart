import 'package:flutter/material.dart';

import '/models/plant_model.dart';
import '/screens/details/components/details_screen_body.dart';

class DetailsScreen extends StatelessWidget {
  final PlantModel plant;
  const DetailsScreen({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsScreenBody(plant: plant),
    );
  }
}
