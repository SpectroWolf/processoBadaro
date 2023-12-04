import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:processo_badaro/utils/app_colors.dart';
import 'package:processo_badaro/widgets/circular_avatar.dart';

class UserDataCard extends StatefulWidget {
  const UserDataCard({super.key});

  @override
  State<UserDataCard> createState() => _UserDataCardState();
}

class _UserDataCardState extends State<UserDataCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      color: AppColor.white,
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          children: [
            Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.pink,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(100.0),
                      topRight: Radius.circular(100.0),
                    ),
                  ),
                  width: 4,
                  height: 92,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.black,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(100.0),
                      bottomRight: Radius.circular(100.0),
                    ),
                  ),
                  width: 4,
                  height: 32,
                )
              ],
            ),
            const SizedBox(width: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Olá, Roberta',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const Text(
                  'EMPRESA BADARÓ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Badaró S750 Colab QP COPA...',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: AppColor.gray,
                    fontSize: 11,
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/card.svg'),
                    const SizedBox(width: 8),
                    const Text(
                      '081924532',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: <Widget>[
                const CustomCircularAvatar(),
                const SizedBox(height: 22),
                OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(
                                width: 1, color: AppColor.lightGray),
                        ),
                      ),
                    ),
                    child: Text(
                      'Meus Dados',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: AppColor.black),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
