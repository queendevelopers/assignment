import 'package:flutter/material.dart';
import 'package:swivt/src/utils/utilities.dart';
import 'widgets.dart';

class Button extends Box {
  final double? height;
  final double? width;
  final Color? color;
  final double? borderRadii;
  final Border? border;
  final BoxShape shape;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final Function? onTapped;
  final double? elevation;
  final Alignment? alignment;
  Button({
    this.height,
    this.width,
    this.child,
    this.color,
    this.borderRadii,
    this.border,
    this.alignment: Alignment.center,
    this.shape: BoxShape.rectangle,
    this.padding,
    this.onTapped,
    this.elevation,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTapped != null) {
          FocusScope.of(context).unfocus();
          onTapped!();
        }
      },
      child: Box(
        height: height,
        width: width,
        elevation: elevation,
        padding: padding,
        alignment: alignment,
        color: color,
        shape: shape,
        border: border,
        borderRadii: borderRadii,
        child: child,
      ),
    );
  }
}

class TapArea extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final double? borderRadii;
  final Border? border;
  final BoxShape shape;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final Function? onTapped;
  final double? elevation;
  final Alignment? alignment;
  TapArea({
    this.height,
    this.width,
    this.child,
    this.color,
    this.borderRadii,
    this.border,
    this.alignment: Alignment.center,
    this.shape: BoxShape.rectangle,
    this.padding,
    this.onTapped,
    this.elevation,
  });
  @override
  Widget build(BuildContext context) {
    return Button(
      alignment: alignment,
      shape: shape,
      onTapped: onTapped,
      elevation: elevation,
      width: width ?? context.width * 0.25,
      height: height ?? 35.0,
      color: color ?? primaryColor,
      borderRadii: borderRadii ?? context.width * 0.1,
      border: border,
      child: child,
    );
  }
}
