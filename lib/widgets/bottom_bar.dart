import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../utils/app_colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:const Color(0x00ffffff),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: AppColor.black,
          ),
          child: GNav(
              iconSize: 24,
              tabBorderRadius: 100,
              backgroundColor: AppColor.black,
              color: AppColor.white,
              activeColor: AppColor.white,
              tabBackgroundColor: AppColor.pink,
              padding: const EdgeInsets.all(8),
              gap: 8,
              tabs: const [
                GButton(
                  icon: Icons.house_outlined,
                  text: 'Início',
                ),
                GButton(
                  icon: Icons.calendar_month_outlined,
                  text: 'label2',
                ),
                GButton(
                  icon: Icons.credit_card_outlined,
                  text: 'Label3',
                ),
                GButton(
                    icon: Icons.favorite,
                    text: 'Label4'),
                GButton(
                    icon: Icons.key,
                    text: 'Label5'),
              ]),
        ),
      ),
    );
  }
}
