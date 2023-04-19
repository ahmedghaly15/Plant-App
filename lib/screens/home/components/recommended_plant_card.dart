import 'package:flutter/material.dart';

import '../../../models/plant_model.dart';
import '../../../shared/constants.dart';

class RecommendedPlantCard extends StatelessWidget {
  final PlantModel plant;
  final void Function()? onTap;
  const RecommendedPlantCard({
    Key? key,
    required this.plant,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // Cover 40% of our screen width
        width: size.width * 0.4,
        margin: const EdgeInsets.only(
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding,
        ),
        child: Column(
          children: <Widget>[
            Image.asset(plant.image!),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(10, 0),
                    blurRadius: 30,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: <InlineSpan>[
                        TextSpan(
                          text: "${plant.title}\n".toUpperCase(),
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: plant.country!.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$${plant.price}",
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: kPrimaryColor,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
