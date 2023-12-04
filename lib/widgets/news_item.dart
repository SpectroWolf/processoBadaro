import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_colors.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 16.0),
      color: AppColor.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Image.asset(
              'assets/images/man1.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 12),
            Column(
              children: <Widget>[
                Text(
                  textAlign: TextAlign.start,
                  'PRIMEIRA INFÂNCIA',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: AppColor.pink),
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: 200,
                  child: Text(
                    'Cuidados importantes para os primeiros anos do seu filho',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColor.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                'assets/icons/export.svg',
                colorFilter:
                    ColorFilter.mode(AppColor.lightGray, BlendMode.srcIn),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
