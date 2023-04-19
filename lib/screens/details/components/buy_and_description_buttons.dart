import 'package:flutter/material.dart';

import '/shared/constants.dart';

class BuyAndDescriptionButtons extends StatelessWidget {
  const BuyAndDescriptionButtons({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          height: 79.35,
          width: size.width / 2,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kPrimaryColor),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            ),
            child: const Text(
              "Buy Now",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Description",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
