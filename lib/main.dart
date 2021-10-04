import 'package:conversor_de_temperatura/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData(
        primaryColor: kLightColor,
        canvasColor: kLightColor,
        accentColor: kLightColor,
        backgroundColor: kDarkColor,
        scaffoldBackgroundColor: kDarkColor,
        textTheme: GoogleFonts.poppinsTextTheme()),
  ));
}
