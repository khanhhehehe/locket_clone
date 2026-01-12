import 'package:flutter/material.dart';

class ShadowUtils {
  static List<BoxShadow> buttonShadow = [
    BoxShadow(
      offset: const Offset(0, 0),
      blurRadius: 0,
      spreadRadius: 0,
      color: Colors.lightBlue.withValues(alpha: 0.5),
    ),
    BoxShadow(
      offset: const Offset(0, 2),
      blurRadius: 4,
      spreadRadius: 0,
      color: Colors.lightBlue.withValues(alpha: 0.49),
    ),
    BoxShadow(
      offset: const Offset(0, 8),
      blurRadius: 8,
      spreadRadius: 0,
      color: Colors.lightBlue.withValues(alpha: 0.43),
    ),
    BoxShadow(
      offset: const Offset(0, 17),
      blurRadius: 10,
      spreadRadius: 0,
      color: Colors.lightBlue.withValues(alpha: 0.25),
    ),
    BoxShadow(
      offset: const Offset(0, 31),
      blurRadius: 12,
      spreadRadius: 0,
      color: Colors.lightBlue.withValues(alpha: 0.07),
    ),
    BoxShadow(
      offset: const Offset(0, 48),
      blurRadius: 13,
      spreadRadius: 0,
      color: Colors.lightBlue.withValues(alpha: 0.01),
    ),
  ];
}
