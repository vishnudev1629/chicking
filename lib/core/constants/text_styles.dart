import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static final rubik = GoogleFonts.rubik();
  static final nunito = GoogleFonts.nunito();
  static final montserrat = GoogleFonts.roboto();

  // Naming convention: [fontFamily]_[fontSize]_[color]_[fontWeight]

  static final TextStyle rubik16WhiteW500 = rubik.copyWith(
    fontSize: 16,
    color: Colors.white,
  );

  static final TextStyle rubik18WhiteW500 = rubik.copyWith(
    fontSize: 18,
    color: Colors.white,
  );

  static final TextStyle rubik23WhiteW700 = rubik.copyWith(
    fontSize: 23,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static final TextStyle rubik12WredeW500 = rubik.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: const Color(0XFFC7838E),
  );
  static final TextStyle rubik14WredeW600 = rubik.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: const Color(0XFFE01741),
  );

  static final TextStyle rubik16blackW600 = rubik.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static final TextStyle rubik16blackW700 = rubik.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static final TextStyle rubik14blackW600 = rubik.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static final TextStyle rubik12greyW600 = rubik.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Colors.grey,
  );
  static final TextStyle rubik12gblackyW500 = montserrat.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static final TextStyle rubik12bluegreyW600 = rubik.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: const Color.fromARGB(255, 35, 35, 35),
  );
  static final TextStyle rubik12bluegreyW500 = rubik.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: const Color.fromARGB(255, 35, 35, 35),
  );
  static final TextStyle rubik20black700 = rubik.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: const Color.fromARGB(255, 6, 6, 6),
  );
  static final TextStyle rubik20red700 = rubik.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: const Color(0XFFDA323F),
  );
  static final TextStyle rubik14bluegreyW500 = rubik.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: const Color.fromARGB(255, 77, 77, 77),
  );
  static final TextStyle nunito14greyW600 = nunito.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: const Color.fromARGB(255, 86, 86, 86),
  );
  static final TextStyle montserrat14blackW500 = montserrat.copyWith(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: const Color(0XFF919191),
  );
  static final TextStyle rubik15blackW600 = rubik.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static final TextStyle rubik14gblackyW500 = montserrat.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static final TextStyle rubik20gblackyW500 = rubik.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: Colors.black,
  );
}
