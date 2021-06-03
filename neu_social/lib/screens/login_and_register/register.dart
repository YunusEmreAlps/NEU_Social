import 'package:neu_social/components/metrics.dart';
import 'package:neu_social/components/widgets.dart';
import 'package:neu_social/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        color: Clr.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: ww(context, 24)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: hh(context, 54)),
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
                  radius: ww(context, 48),
                  offsetY: hh(context, 2),
                  child: SvgPicture.asset(
                    "assets/icons/Close.svg",
                  ),
                ),
                SizedBox(height: hh(context, 48)),
                Text(
                  "Register Account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: hh(context, 36),
                    fontWeight: FontWeight.w800,
                    color: Clr.black,
                    height: 1.111,
                  ),
                ),
                SizedBox(height: hh(context, 12)),
                Container(
                  width: s.width,
                  child: Text(
                    "Complete your details",
                    style: TextStyle(
                      fontSize: hh(context, 17),
                      fontWeight: FontWeight.w500,
                      color: Clr.grey800,
                      height: 1.29,
                    ),
                  ),
                ),
                SizedBox(height: hh(context, 24)),
                // Full Name
                textIconField(
                  context,
                  s,
                  width: s.width,
                  height: hh(context, 56),
                  icon: "assets/icons/User.svg",
                  hintText: "Full name",
                  iconColor: Clr.black,
                ),
                SizedBox(height: hh(context, 24)),
                // Student ID
                textIconField(
                  context,
                  s,
                  hintText: "Student ID",
                  width: s.width,
                  height: hh(context, 56),
                  icon: "assets/icons/Identification.svg",
                  iconColor: Clr.black,
                ),
                SizedBox(height: hh(context, 24)),
                // Phone Number
                textIconField(
                  context,
                  s,
                  hintText: "Phone Number",
                  width: s.width,
                  height: hh(context, 56),
                  icon: "assets/icons/Phone.svg",
                  iconColor: Clr.black,
                ),
                SizedBox(height: hh(context, 24)),
                textIconField(
                  context,
                  s,
                  keyboardType: TextInputType.emailAddress,
                  hintText: "Email address",
                  width: s.width,
                  height: hh(context, 56),
                  icon: "assets/icons/Mail.svg",
                  iconColor: Clr.black,
                ),
                SizedBox(height: hh(context, 24)),
                textIconField(
                  context,
                  s,
                  obscureText: true,
                  hintText: "Password",
                  width: s.width,
                  height: hh(context, 56),
                  icon: "assets/icons/Lock.svg",
                  iconColor: Clr.black,
                ),
                SizedBox(height: hh(context, 24)),
                flatShadowButton(
                  context,
                  onTap: () {},
                  width: s.width,
                  height: hh(context, 60),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                      color: Clr.black,
                      fontSize: hh(context, 21),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  color: Clr.yellow,
                ),
                SizedBox(height: hh(context, 40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: hh(context, 17),
                        fontWeight: FontWeight.w500,
                        color: Clr.black,
                        height: 1.277,
                      ),
                    ),
                    SizedBox(width: ww(context, 6)),
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Login2();
                            },
                          ),
                        ),
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: hh(context, 17),
                          fontWeight: FontWeight.w700,
                          color: Clr.red,
                          height: 1.277,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
