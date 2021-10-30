import 'package:flutter/material.dart';

import 'utilities.dart';

double authFieldHeight(BuildContext context) => context.height * 0.075;
double authFieldWidth(BuildContext context) => context.width * 0.75;
double dashboardCircularBoxHeight(BuildContext context) => context.width * 0.35;

Widget divider({double height: 0.5}) {
  return Divider(color: Colors.grey.shade300, height: height);
}
