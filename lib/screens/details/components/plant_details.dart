import 'package:flutter/material.dart';
import 'package:plant_app/models/plant_model.dart';

import '../../../shared/constants.dart';

class PlantDetails extends StatelessWidget {
  final PlantModel plant;
  const PlantDetails({
    super.key,
    required this.plant,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: <InlineSpan>[
                TextSpan(
                  text: "${plant.title!.toUpperCase()}\n",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: plant.country!.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            "\$${plant.price}",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
