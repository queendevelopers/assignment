import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension SpacingExtension on num {
  Widget get verticalSpacer => SizedBox(height: this.toDouble(), width: 0);
  Widget get horizontalSpacer => SizedBox(height: 0, width: this.toDouble());
}

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;
  TextTheme get textTheme => Theme.of(this).textTheme;
  void goBack() => Navigator.pop(this);
  void pushReplacement(Widget view) => Navigator.pushReplacement(
        this,
        MaterialPageRoute(
          builder: (context) => view,
        ),
      );
  void push(Widget view) => Navigator.push(
        this,
        MaterialPageRoute(
          builder: (context) => view,
        ),
      );
  void pushNamed(String viewname) => Navigator.pushNamed(
        this,
        viewname,
      );
  void pushReplacementNamed(String viewname) => Navigator.pushReplacementNamed(
        this,
        viewname,
      );
}

extension WidgetExtension on Widget {
  //
  Widget padHorizontal(double horizontalPadding) => Padding(
        padding: padSymmetrically(
          horizontal: horizontalPadding,
          vertical: 0.0,
        ),
        child: this,
      );
  Widget padVertical(double verticalPadding) => Padding(
        padding: padSymmetrically(
          vertical: verticalPadding,
          horizontal: 0.0,
        ),
        child: this,
      );
  Widget padSymmetric({double? vertical = 0.0, double? horizontal = 0.0}) =>
      Padding(
        padding: padSymmetrically(
          vertical: vertical,
          horizontal: horizontal,
        ),
        child: this,
      );

  Widget padOnly({
    double? left: 0.0,
    double? right: 0.0,
    double? bottom: 0.0,
    double? top: 0.0,
  }) =>
      Padding(
        padding: padsOnly(
          left: left,
          right: right,
          bottom: bottom,
          top: top,
        ),
        child: this,
      );

  Widget padAll(double value) => Padding(
        padding: padsAll(value),
        child: this,
      );
}

EdgeInsets padSymmetrically(
        {double? horizontal = 0.0, double? vertical = 0.0}) =>
    EdgeInsets.symmetric(
      vertical: vertical!,
      horizontal: horizontal!,
    );

EdgeInsets padsOnly(
        {double? left = 0.0,
        double? right = 0.0,
        double? bottom = 0.0,
        double? top = 0.0}) =>
    EdgeInsets.only(
      left: left!,
      right: right!,
      bottom: bottom!,
      top: top!,
    );

EdgeInsets padsAll(double value) => EdgeInsets.all(value);
