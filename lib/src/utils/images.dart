import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swivt/src/main/ui/widgets/loading.dart';
import 'package:swivt/src/utils/utilities.dart';

Widget assetImage(
  String path, {
  double? height,
  double? width,
  Color? color,
  BoxFit? fit,
  BlendMode? blendMode,
  double? borderRadii,
  BorderRadius? borderRadiuss,
}) =>
    ClipRRect(
      borderRadius: borderRadiuss ?? borderRadius(borderRadii),
      child: Image.asset(
        path,
        height: height ?? 50,
        width: width ?? 50,
        color: color,
        colorBlendMode: blendMode,
        fit: fit,
      ),
    );
Widget networkImage(
  String url, {
  double? height,
  double? width,
  Color? color,
  BoxFit? fit,
  double? borderRadii,
  BorderRadius? borderRadiuss,
}) =>
    ClipRRect(
      borderRadius: borderRadiuss ?? borderRadius(borderRadii),
      child: CachedNetworkImage(
        imageUrl: url,
        placeholder: (_, __) => loader(),
        height: height ?? 50,
        width: width ?? 50,
        color: color,
        colorBlendMode: BlendMode.color,
        fit: fit,
      ),
    );

final String logoImage = 'assets/logo.png';
