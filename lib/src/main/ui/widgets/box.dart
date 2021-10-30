import 'package:flutter/material.dart';
import 'package:swivt/src/utils/utilities.dart';

class Box extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final double? borderRadii;
  final Border? border;
  final BoxShape shape;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final double? elevation;
  final Alignment? alignment;
  final BorderRadius? borderRadius;
  final BoxConstraints? constraints;
  const Box({
    this.height,
    this.width,
    this.color,
    this.borderRadii,
    this.alignment: Alignment.center,
    this.border,
    this.shape: BoxShape.rectangle,
    this.child,
    this.padding,
    this.elevation: 0.0,
    this.borderRadius,
    this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: elevation,
      margin: EdgeInsets.zero,
      shape: shape == BoxShape.circle
          ? CircleBorder()
          : RoundedRectangleBorder(
              borderRadius: borderRadius ?? circularRadius(borderRadii),
            ),
      child: Container(
        height: height,
        width: width,
        constraints: constraints,
        alignment: alignment,
        padding: padding,
        decoration: BoxDecoration(
          color: color,
          shape: shape,
          borderRadius: shape != BoxShape.circle
              ? borderRadius ?? circularRadius(borderRadii)
              : null,
          border: border,
        ),
        child: child,
      ),
    );
  }
}
