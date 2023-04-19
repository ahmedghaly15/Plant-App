import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/title_with_custom_underline.dart';

import '../../../shared/constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const TitleWithMoreButton({
    super.key,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(title: title),
          const Spacer(),
          ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kPrimaryColor),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 8,
                ),
              ),
            ),
            child: const Text(
              "More",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
