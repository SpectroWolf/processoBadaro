import 'package:flutter/material.dart';
import 'package:processo_badaro/utils/app_colors.dart';

import 'home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>{

  @override
  void initState(){
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(
          const Duration(seconds: 2),
              () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (ctx) => const HomePage())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: AppColor.black,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20, top: 48),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('assets/images/badaro_logo2.png'),
                  Spacer(),
                  Image.asset('assets/images/loader.png'),
                  Spacer(),
                  Text(
                    'APLICATIVO EXCLUSIVO',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.white,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
        ),
      ),
    );
  }
}
