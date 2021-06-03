import 'package:neu_social/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  startTimeout() {
    Future.delayed(Duration(seconds: 7), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Onboarding();
          },
        ),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        color: Clr.blue,
        child: Column(
          children: [
            Spacer(),
            SvgPicture.asset(
              "assets/icons/Logo.svg",
              width: ww(context, 150),
              height: ww(context, 150),
            ),
            SizedBox(height: hh(context, 222)),
            Text(
              "coded by",
              style: TextStyle(
                fontSize: hh(context, 15),
                fontWeight: FontWeight.w500,
                color: Clr.blue100,
                height: 1.333,
              ),
            ),
            SizedBox(height: hh(context, 6)),
            Text(
              "Yunus Emre Alpu",
              style: TextStyle(
                fontSize: hh(context, 18),
                fontWeight: FontWeight.w700,
                color: Clr.white,
              ),
            ),
            SizedBox(height: hh(context, 85)),
          ],
        ),
      ),
    );
  }
}