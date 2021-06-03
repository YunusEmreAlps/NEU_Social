import 'package:neu_social/components/widgets.dart';
import 'package:flutter/material.dart';
import 'package:neu_social/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController pageCtrl = PageController();
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        child: Column(
          children: [
            Spacer(),
            Container(
              width: s.width,
              height: hh(context, 604),
              child: BlocConsumer<OnboardCubit, OnboardState>(
                listener: (context, state) {
                  pageCtrl.animateToPage(state.page,
                      duration: Duration(milliseconds: 240),
                      curve: Curves.easeInOut);
                },
                builder: (context, state) {
                  return PageView.builder(
                    itemCount: 3,
                    controller: pageCtrl,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Pages2();
                    },
                  );
                },
              ),
            ),
            bottomBar(context, s),
            SizedBox(height: hh(context, 8)),
          ],
        ),
      ),
    );
  }
}

class Pages2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: ww(context, 309),
            height: ww(context, 309),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Clr.red,
            ),
          ),
        ),
        Positioned(
          top: hh(context, 32),
          left: ww(context, 64),
          right: ww(context, 48),
          bottom: hh(context, 225),
          child: SvgPicture.asset(
            "assets/images/Human2.svg",
            width: ww(context, 263),
            height: hh(context, 247),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: s.width,
            height: hh(context, 244),
            padding: EdgeInsets.symmetric(
              horizontal: ww(context, 24),
              vertical: hh(context, 32),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\nNEU SOCIAL",
                  style: TextStyle(
                    fontSize: hh(context, 36),
                    fontWeight: FontWeight.w800,
                    color: Clr.black,
                  ),
                ),
                Spacer(),
                Text(
                  "Share anything and everything on your phone with your friends.",
                  style: TextStyle(
                    fontSize: hh(context, 21),
                    fontWeight: FontWeight.w500,
                    color: Clr.grey800,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget bottomBar(BuildContext context, Size s) => Container(
      width: s.width,
      height: hh(context, 108),
      padding: EdgeInsets.symmetric(
        horizontal: ww(context, 24),
        vertical: hh(context, 24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: ww(context, 52),
            height: hh(context, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(3, (index) {
                return BlocBuilder<OnboardCubit, OnboardState>(
                  builder: (context, state) {
                    bool active = index == state.page;
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 160),
                      width: hh(context, 12),
                      height: hh(context, 12),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: active ? Clr.red : Clr.white,
                        border: Border.all(
                          color: active ? Clr.red : Clr.black,
                          width: ww(context, 2),
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          ),
          circleButtonWithShadow(
            context,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Login();
                  },
                ),
              );
            },
            child: SvgPicture.asset(
              "assets/icons/ArrowForward.svg",
            ),
            color: Clr.yellow,
            radius: ww(context, 60),
          ),
        ],
      ),
    );
