import 'package:flutter/material.dart';

class Palette {
  static const Color background = Color(0xFFf7f7f7);
  static const Color containerColor = Color(0xFFffffff);
  static const Color appbar = Color(0xFF354b75);
  static const Color messageIcon = Color(0xFFdcb13c);
  static const Color acceptButtons = Color(0xFF2493a2);
  static const Color cancelButtons = Color(0xFFeb3131);
  static const Color subscribeButtons = Color(0xFFdab03a);

  static const LinearGradient newsLetter = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF2e4c76), Color(0xFF175165)],
  );
  static const Color bottomBar = Color(0xFF18475b);
}
