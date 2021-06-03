import 'package:neu_social/components/metrics.dart';
import 'package:neu_social/components/widgets.dart';
import 'package:neu_social/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        color: Clr.yellow,
        child: Stack(
          children: [
            Positioned(
              top: hh(context, 55),
              left: ww(context, 4),
              child: SvgPicture.asset(
                "assets/images/Human5.svg",
                width: ww(context, 188),
                height: hh(context, 525),
              ),
            ),
            Positioned(
              top: hh(context, 44),
              right: ww(context, 6),
              child: SvgPicture.asset(
                "assets/images/Human6.svg",
                width: ww(context, 220),
                height: hh(context, 557),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: ww(context, 24)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: hh(context, 54)),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: hh(context, 32),
              left: ww(context, 24),
              child: Container(
                width: ww(context, 324),
                height: hh(context, 404),
                padding: EdgeInsets.all(ww(context, 24)),
                child: Column(
                  children: [
                    Text(
                      "NEU SOCIAL",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: hh(context, 36),
                        fontWeight: FontWeight.w800,
                        color: Clr.black,
                        height: 1.111,
                      ),
                    ),
                    SizedBox(height: hh(context, 16)),
                    Text(
                      "Keep your head out of the Cloud.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: hh(context, 17),
                        fontWeight: FontWeight.w500,
                        color: Clr.grey800,
                        height: 1.29,
                      ),
                    ),
                    SizedBox(height: hh(context, 64)),
                    flatButton(
                      context,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Login2();
                            },
                          ),
                        );
                      },
                      width: ww(context, 279),
                      height: hh(context, 60),
                      borderRadius: ww(context, 16),
                      color: Clr.blue,
                      borderColor: Clr.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "SIGN IN",
                            style: TextStyle(
                              fontSize: hh(context, 21),
                              fontWeight: FontWeight.w800,
                              color: Clr.white,
                              height: 1.33,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: hh(context, 16)),
                    flatButton(
                      context,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Register();
                            },
                          ),
                        );
                      },
                      width: ww(context, 279),
                      height: hh(context, 60),
                      borderRadius: ww(context, 16),
                      color: Clr.green,
                      borderColor: Clr.green,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "SIGN UP",
                            style: TextStyle(
                              fontSize: hh(context, 21),
                              fontWeight: FontWeight.w800,
                              color: Clr.white,
                              height: 1.33,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Clr.white,
                  borderRadius: BorderRadius.circular(ww(context, 16)),
                  border: Border.all(
                    color: Clr.black,
                    width: hh(context, 2),
                  ),
                ),
              ),
            ),
            Positioned(
              top: hh(context, 54),
              left: ww(context, 24),
              child: circleButtonWithShadow(
                context,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Onboarding();
                      },
                    ),
                  );
                },
                radius: ww(context, 48),
                offsetY: hh(context, 2),
                child: SvgPicture.asset(
                  "assets/icons/Close.svg",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
