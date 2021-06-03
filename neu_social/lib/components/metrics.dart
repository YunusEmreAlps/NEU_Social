import 'package:flutter/material.dart';

double hh(BuildContext context, double height) {
  return (MediaQuery.of(context).size.height * height) / 812;
}

double ww(BuildContext context, double width) {
  return (MediaQuery.of(context).size.width * width) / 375;
}
