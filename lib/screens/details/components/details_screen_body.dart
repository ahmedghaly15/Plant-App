import 'package:flutter/material.dart';
import 'package:plant_app/models/plant_model.dart';
import 'package:plant_app/screens/details/components/plant_details.dart';

import 'buy_and_description_buttons.dart';
import 'image_and_icons.dart';

class DetailsScreenBody extends StatelessWidget {
  final PlantModel plant;
  const DetailsScreenBody({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size, plant: plant),
          PlantDetails(plant: plant),
          BuyAndDescriptionButtons(size: size),
        ],
      ),
    );
  }
}
