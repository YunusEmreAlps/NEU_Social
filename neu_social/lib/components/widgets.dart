import 'package:neu_social/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget borderedTextButton(
  BuildContext context, {
  @required double width,
  @required double height,
  @required String title,
  @required TextStyle style,
  @required Color background,
  @required double borderRadius,
  @required Color borderColor,
  @required double borderWidth,
  @required Function onTap,
}) =>
    InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        child: Center(
          child: Text(
            title,
            style: style,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: background,
          border: Border.all(
            width: borderWidth,
            color: borderColor,
          ),
        ),
      ),
    );

Widget circleButtonWithShadow(
  BuildContext context, {
  @required Function onTap,
  double radius = 60,
  @required Widget child,
  Color color = Clr.white,
  Color borderColor = Clr.black,
  double offsetY = 4,
}) =>
    InkWell(
      onTap: onTap,
      child: Container(
        width: radius,
        height: radius,
        padding: EdgeInsets.all(hh(context, 8)),
        child: child,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: borderColor,
              offset: Offset(0, offsetY),
              blurRadius: 0,
              spreadRadius: 0,
            ),
          ],
          border: Border.all(
            color: Clr.black,
            width: 2,
          ),
        ),
      ),
    );

Widget flatButton(
  BuildContext context, {
  @required Function onTap,
  @required double width,
  @required double height,
  @required Widget child,
  Color color = Clr.white,
  Color borderColor = Clr.black,
  double borderWidth = 2,
  @required double borderRadius,
}) =>
    InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        child: Center(
          child: child,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
        ),
      ),
    );

Widget flatShadowButton(
  BuildContext context, {
  @required Function onTap,
  @required double width,
  @required double height,
  @required Widget child,
  Color color = Clr.white,
}) =>
    InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        child: Center(
          child: child,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(ww(context, 16)),
          border: Border.all(
            color: Clr.black,
            width: hh(context, 2),
          ),
          boxShadow: [
            BoxShadow(
              color: Clr.black,
              offset: Offset(0, hh(context, 4)),
              blurRadius: 0,
              spreadRadius: 0,
            ),
          ],
        ),
      ),
    );

Widget textIconField(
  BuildContext context,
  Size s, {
  @required double width,
  @required double height,
  @required String icon,
  String hintText = "",
  bool obscureText = false,
  TextInputType keyboardType = TextInputType.text,
  Color iconColor = Clr.white,
}) =>
    Container(
      width: width,
      height: height,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(ww(context, 16)),
            child: SvgPicture.asset(
              icon,
              height: hh(context, 24),
              color: iconColor,
            ),
          ),
          Expanded(
            child: TextField(
              style: TextStyle(
                color: Clr.black,
                fontSize: hh(context, 21),
                fontWeight: FontWeight.w500,
              ),
              obscureText: obscureText,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Clr.grey800,
                ),
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Clr.black,
          width: ww(context, 2),
        ),
        borderRadius: BorderRadius.circular(ww(context, 16)),
      ),
    );

Widget textField(
  BuildContext context,
  Size s, {
  @required double width,
  @required double height,
  String hintText = "",
  bool obscureText = false,
  TextInputType keyboardType = TextInputType.text,
}) =>
    Container(
      width: width,
      height: height,
      child: TextField(
        style: TextStyle(
          color: Clr.black,
          fontSize: hh(context, 24),
          fontWeight: FontWeight.w800,
        ),
        textAlign: TextAlign.center,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Clr.grey800,
          ),
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Clr.black,
          width: ww(context, 2),
        ),
        borderRadius: BorderRadius.circular(ww(context, 16)),
      ),
    );

Widget textArea(
  BuildContext context,
  Size s, {
  @required double width,
  @required double height,
  String hintText = "",
  bool obscureText = false,
}) =>
    Container(
      width: width,
      height: height,
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: 8,
        maxLength: 1000,
        style: TextStyle(
          color: Clr.black,
          fontSize: hh(context, 24),
          fontWeight: FontWeight.w800,
        ),
        textAlign: TextAlign.center,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Clr.grey800,
          ),
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Clr.black,
          width: ww(context, 2),
        ),
        borderRadius: BorderRadius.circular(ww(context, 16)),
      ),
    );

Widget dialogBox(
  BuildContext context,
  Size s, {
  @required Function cancel,
  @required Function confirm,
  String title = "Are you sure?",
  String subtitle = "",
}) =>
    Container(
      width: s.width,
      height: s.height,
      color: Clr.black.withOpacity(0.8),
      child: Center(
        child: Container(
          width: ww(context, 279),
          height: hh(context, 156),
          padding: EdgeInsets.only(
            left: ww(context, 24),
            right: ww(context, 24),
            top: ww(context, 24),
            bottom: ww(context, 16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: hh(context, 17),
                  fontWeight: FontWeight.w800,
                  color: Clr.black,
                ),
              ),
              SizedBox(height: hh(context, 8)),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: hh(context, 13),
                  fontWeight: FontWeight.w500,
                  color: Clr.black,
                  height: 1.38,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  flatButton(
                    context,
                    onTap: cancel,
                    width: ww(context, 109),
                    height: hh(context, 36),
                    borderRadius: ww(context, 12),
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        fontSize: hh(context, 12),
                        fontWeight: FontWeight.w800,
                        color: Clr.black,
                        height: 1.33,
                      ),
                    ),
                  ),
                  Spacer(),
                  flatButton(
                    context,
                    onTap: confirm,
                    width: ww(context, 109),
                    height: hh(context, 36),
                    borderRadius: ww(context, 12),
                    color: Clr.black,
                    child: Text(
                      "Delete",
                      style: TextStyle(
                        fontSize: hh(context, 12),
                        fontWeight: FontWeight.w800,
                        color: Clr.white,
                        height: 1.33,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Clr.yellow100,
            borderRadius: BorderRadius.circular(ww(context, 16)),
            border: Border.all(
              color: Clr.black,
              width: ww(context, 2),
            ),
          ),
        ),
      ),
    );

Widget filterBox(BuildContext context, Size s) => Container(
      width: s.width,
      height: s.height,
      color: Clr.black.withOpacity(0.8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: s.width,
            child: Column(
              children: [
                Container(
                  width: s.width,
                  height: hh(context, 62),
                  padding: EdgeInsets.symmetric(horizontal: ww(context, 24)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Filter Box",
                        style: TextStyle(
                          fontSize: hh(context, 24),
                          fontWeight: FontWeight.w800,
                          color: Clr.black,
                          height: 1.166,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/icons/Close.svg",
                        width: ww(context, 24),
                        height: ww(context, 24),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Clr.black,
                        width: hh(context, 2),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: hh(context, 24)),
                // TODO: List Section
                flatButton(
                  context,
                  onTap: () {},
                  width: ww(context, 327),
                  height: hh(context, 60),
                  color: Clr.black,
                  child: Text(
                    "Apply",
                    style: TextStyle(
                      fontSize: hh(context, 21),
                      fontWeight: FontWeight.w800,
                      color: Clr.white,
                      height: 1.333,
                    ),
                  ),
                  borderRadius: ww(context, 16),
                ),
                SizedBox(height: hh(context, 24)),
              ],
            ),
            decoration: BoxDecoration(
              color: Clr.white,
              border: Border.all(
                color: Clr.black,
                width: hh(context, 2),
              ),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(ww(context, 16)),
              ),
            ),
          ),
        ],
      ),
    );
