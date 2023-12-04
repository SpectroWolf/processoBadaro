import 'package:flutter/material.dart';
import 'package:processo_badaro/utils/app_colors.dart';

class CustomCircularAvatar extends StatefulWidget {
  const CustomCircularAvatar({super.key});

  static String imagePath = "";

  @override
  State<CustomCircularAvatar> createState() => _CustomCircularAvatarState();
}

class _CustomCircularAvatarState extends State<CustomCircularAvatar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppColor.pink,
            ),
            height: 76,
            width: 76,
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Container(
              alignment: Alignment.topLeft,
              color: AppColor.white,
              height: 36,
              width: 36,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppColor.black,
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(3),
            child: const CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage('assets/images/womam1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
