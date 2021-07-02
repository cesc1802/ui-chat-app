import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyle kAppTitle = GoogleFonts.roboto(fontSize: 36);

  static TextStyle h1 = GoogleFonts.roboto(
    fontSize: 40,
    fontWeight: FontWeight.w500,
    height: 1.2,
  );

  // Title 1, Title 2
  static TextStyle h2 = GoogleFonts.roboto(
    fontSize: 27,
    fontWeight: FontWeight.w600,
    height: 1.2,
  );
  static TextStyle h3 = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.2,
  );

  // Headline 1, Headline 2
  static TextStyle h4 = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    height: 1.2,
  );
  static TextStyle h5 = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.2,
  );

  // Body 1, Body 2
  static TextStyle bodyText1 = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.2,
  );
  static TextStyle bodyText2 = GoogleFonts.roboto(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    height: 1.2,
  );

  static TextStyle caption = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.2,
  );
}
