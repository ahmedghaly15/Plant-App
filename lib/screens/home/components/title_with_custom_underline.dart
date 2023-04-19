import 'package:flutter/material.dart';

import '/shared/constants.dart';

class TitleWithCustomUnderline extends StatelessWidget {
  final String title;
  const TitleWithCustomUnderline({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: kPrimaryColor.withOpacity(0.2),
              margin: const EdgeInsets.only(left: kDefaultPadding / 4),
              height: 7,
            ),
          ),
        ],
      ),
    );
  }
}
