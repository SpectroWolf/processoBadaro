import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:processo_badaro/utils/app_colors.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size(
        double.maxFinite,
        80,
      );
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.pink,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: AppBar(
          backgroundColor: AppColor.pink,
          elevation: 0,
          titleSpacing: 0,
          title:
              Image.asset('assets/images/badaró_logo.png', fit: BoxFit.cover),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/notification.svg',
                colorFilter: ColorFilter.mode(AppColor.white, BlendMode.srcIn),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/message-question.svg',
                colorFilter: ColorFilter.mode(AppColor.white, BlendMode.srcIn),
              ),
            ),
          ],
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/menu.svg',
              colorFilter: ColorFilter.mode(AppColor.white, BlendMode.srcIn),
            ),
          ),
        ),
      ),
    );
  }
}
