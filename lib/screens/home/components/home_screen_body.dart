import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/title_with_mote_button.dart';

import 'header_with_search_box.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Provide the total height & width of our screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            title: 'Recommended',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
