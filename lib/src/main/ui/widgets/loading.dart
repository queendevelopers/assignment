import 'package:swivt/src/utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Widget loader() => SpinKitWave(
      itemCount: 8,
      color: primaryColor,
    );

// Widget loadingCube({double? height, double? width}) =>
//     assetImage(loading, height: height, width: width);
