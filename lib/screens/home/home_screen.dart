import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/screens/home/components/home_screen_body.dart';
import '/shared/constants.dart';
import 'components/custom_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const HomeScreenBody(),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/menu.svg'),
      ),
    );
  }
}
