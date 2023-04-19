import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/models/plant_model.dart';

import '/shared/constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    super.key,
    required this.size,
    required this.plant,
  });
  final PlantModel plant;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: SizedBox(
        height: size.height * 0.75,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding * 2,
                ),
                child: Column(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                    ),
                    const Spacer(),
                    const IconCard(icon: 'assets/icons/sun.svg'),
                    const IconCard(icon: 'assets/icons/icon_2.svg'),
                    const IconCard(icon: 'assets/icons/icon_3.svg'),
                    const IconCard(icon: 'assets/icons/icon_4.svg'),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.75,
              width: size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.2),
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(plant.image!),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
