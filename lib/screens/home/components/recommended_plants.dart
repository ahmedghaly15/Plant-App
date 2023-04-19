import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';
import 'package:plant_app/screens/home/components/recommended_plant_card.dart';

import '../../../shared/constants.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.33,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: ListView.separated(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: recommendedPlants.length,
          itemBuilder: (context, index) {
            return RecommendedPlantCard(
              plant: recommendedPlants[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      plant: recommendedPlants[index],
                    ),
                  ),
                );
              },
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(width: kDefaultPadding);
          },
        ),
      ),
    );
  }
}
