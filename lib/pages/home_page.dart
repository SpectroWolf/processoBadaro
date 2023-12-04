import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:processo_badaro/utils/app_colors.dart';
import 'package:processo_badaro/widgets/appbar.dart';
import 'package:processo_badaro/widgets/bottom_bar.dart';
import 'package:processo_badaro/widgets/highlight_card.dart';
import 'package:processo_badaro/widgets/news_item.dart';
import 'package:processo_badaro/widgets/quick_access_item.dart';
import 'package:processo_badaro/widgets/user_data_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        appBar: const CustomAppBar(),
        backgroundColor: AppColor.offWhite,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const UserDataCard(),
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'Acesso Rápido',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 104,
                child: Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const <Widget>[
                      QuickAccessItem(
                        image: 'assets/icons/card.svg',
                        title: 'Visualizar Cartões',
                      ),
                      QuickAccessItem(
                        image: 'assets/icons/money-recive.svg',
                        title: 'Meus Saldos',
                      ),
                      QuickAccessItem(
                        image: 'assets/icons/calendar-tick.svg',
                        title: 'Meus Eventos',
                      ),
                      QuickAccessItem(
                        image: 'assets/icons/call-calling.svg',
                        title: 'Fale Conosco',
                      ),
                      QuickAccessItem(
                        image: 'assets/icons/card.svg',
                        title: 'Label 6',
                      ),
                      QuickAccessItem(
                        image: 'assets/icons/card.svg',
                        title: 'Label 7',
                      ),
                      QuickAccessItem(
                        image: 'assets/icons/card.svg',
                        title: 'Label 8',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 24.0),
                color: AppColor.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ListTile(
                    leading: Image.asset('assets/images/bada-icon.png'),
                    title: const Text(
                      maxLines: 2,
                      'Olá, me fale o que esta precis...',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    trailing: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(AppColor.pink),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'Iniciar',
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 8.0),
                            SvgPicture.asset(
                              'assets/icons/messages-2.svg',
                              colorFilter: ColorFilter.mode(
                                  AppColor.white, BlendMode.srcIn),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 48.0),
              const HighLightCard(),
              const SizedBox(height: 48.0),
              const Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'Só para você, Roberta!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                height: 120,
                child: Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const <Widget>[
                      NewsItem(),
                      NewsItem(),
                      NewsItem(),
                      NewsItem(),
                      NewsItem(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 100.0),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar());
  }
}
