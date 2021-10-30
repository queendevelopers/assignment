import 'package:flutter/material.dart';

// ignore: camel_case_types
class text extends StatelessWidget {
  final dynamic value;
  final Color? color;
  final double? size;
  final bool isCentered;
  final int maxLine;
  final double latterSpacing;
  final bool isLongText;
  final bool isJustify;
  final FontWeight? fontweight;
  final TextDecoration? decoration;
  final String? fontFamily;
  final TextStyle? style;
  final double? height;
  text(
    this.value, {
    this.color,
    this.size: 12.0,
    this.fontweight,
    this.decoration,
    this.fontFamily,
    this.isCentered = false,
    this.style,
    this.isLongText = false,
    this.isJustify = false,
    this.maxLine = 2,
    this.latterSpacing = 0.2,
    this.height: 1.2,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      "$value",
      textAlign: isCentered
          ? TextAlign.center
          : isJustify
              ? TextAlign.justify
              : TextAlign.left,
      maxLines: isLongText ? 20 : maxLine,
      overflow: TextOverflow.ellipsis,
      style: style ??
          TextStyle(
            color: color,
            fontSize: size,
            fontFamily: fontFamily,
            decoration: decoration != null ? decoration : null,
            height: height,
            fontWeight: fontweight ?? FontWeight.normal,
            letterSpacing: latterSpacing,
          ),
    );
  }
}
