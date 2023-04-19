import 'package:flutter/material.dart';

import '../models/plant_model.dart';

// Colors that we use in our app
const kPrimaryColor = Color(0xFF0C9869);
const kTextColor = Color(0xFF3C4046);
const kBackgroundColor = Color(0xFFF9F8FD);

const double kDefaultPadding = 20.0;

List<PlantModel> recommendedPlants = [
  PlantModel(
    price: 440,
    country: 'russia',
    image: 'assets/images/image_1.png',
    title: 'samantha',
  ),
  PlantModel(
    price: 210,
    country: 'france',
    image: 'assets/images/image_2.png',
    title: 'angelica',
  ),
  PlantModel(
    price: 380,
    country: 'russia',
    image: 'assets/images/image_3.png',
    title: 'hazel',
  ),
];
