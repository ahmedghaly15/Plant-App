import 'package:flutter/material.dart';

import '/shared/constants.dart';
import 'featured_plants_card.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: featuredPlants.length,
          itemBuilder: (context, index) {
            return FeaturedPlantCard(image: featuredPlants[index]);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(width: kDefaultPadding);
          },
        ),
      ),
    );
  }
}
