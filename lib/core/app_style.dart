import 'package:flutter/material.dart';

const List<Color> colorList = [
  Color(0xFFF4511E),
  Color(0xFFFDD835),
  Color(0xFF7CB342),
  Color(0xFF00ACC1),
  Color(0xFF673AB7),
  Color(0xFFE53935),
  Color(0xFFD81B60),
  Color(0xFF8E24AA),
  Color(0xFF3949AB),
  Color(0xFF1E88E5),
  Color(0xFF039BE5),
  Color(0xFF00ACC1),
  Color(0xFF00897B),
  Color(0xFF43A047),
  Color(0xFF7CB342),
  Color(0xFFC0CA33),
];

const bodySmall = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 12,
  fontWeight: FontWeight.w500,
  color: Colors.grey,
  overflow: TextOverflow.ellipsis,
);

const bodyMedium = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: Colors.white,
);

const labelMedium = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: Colors.white,
);

const labelLarge = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 16,
  fontWeight: FontWeight.w700,
  overflow: TextOverflow.ellipsis,
  color: Colors.white,
);

const headLineSmall = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 24,
  fontWeight: FontWeight.w900,
  color: Colors.white,
);

const focusedBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.white, width: .8),
  borderRadius: BorderRadius.all(Radius.circular(8.0)),
);

const enabledBorder = InputBorder.none;

const inputBorder = InputBorder.none;

const errorBorder = OutlineInputBorder(
  borderSide: BorderSide(width: .8, color: Colors.redAccent),
  borderRadius: BorderRadius.all(Radius.circular(8.0)),
);

const focusedErrorBorder = OutlineInputBorder(
  borderSide: BorderSide(width: .8, color: Colors.redAccent),
  borderRadius: BorderRadius.all(Radius.circular(8.0)),
);
