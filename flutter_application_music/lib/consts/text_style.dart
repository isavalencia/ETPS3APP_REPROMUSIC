import 'package:flutter/material.dart';
import 'colors.dart';

const bold = "bold";
const regular = "regular";

ourStyle({family = "regular", double? size = 20, color = tealColor}) {
  return TextStyle(
    fontSize: size,
    color: color,
    fontFamily: family,
  );
}
