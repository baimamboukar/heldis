import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';

class Styles {
  static TextStyle designText(
          {required Color color, required double size, required bool bold}) =>
      TextStyle(
          fontSize: size,
          color: color,
          fontWeight: bold ? FontWeight.bold : FontWeight.normal);
  static TextStyle header() => TextStyle(
      fontSize: 22, color: Palette.primary, fontWeight: FontWeight.bold);

  static TextStyle subtitle = TextStyle(
    fontSize: 16.0,
    color: Palette.secondary,
  );
}
