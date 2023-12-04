import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:processo_badaro/utils/app_colors.dart';

class QuickAccessItem extends StatelessWidget {
  const QuickAccessItem({super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          margin: const EdgeInsets.only(left: 16.0),
          color: AppColor.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(AppColor.pink, BlendMode.srcIn),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Container(
          margin: const EdgeInsets.only(left: 16.0),
          width: 88,
          child: Text(
            textAlign: TextAlign.center,
            maxLines: 2,
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
