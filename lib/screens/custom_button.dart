import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.onPressed,
    required this.title,
  });
  final void Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    double mediaQueryheight = MediaQuery.of(context).size.height;
    double mediaQuerywidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: mediaQuerywidth * 0.6,
        height: mediaQueryheight * 0.06,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Colors.white.withOpacity(0.4)),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: const Color(0xFF1DBF73),
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

//
//
// class GooogleFontsPop {
//   final Color? color;
//   final double? size;
//   final FontWeight? weight;
//   GooogleFontsPop({
//     required this.color,
//     required this.size,
//     required this.weight,
//   });
//
//  static void googleFonts(
//     Color color,
//     Size size,
//     FontWeight weight,
//   ) {
//     GoogleFonts.poppins(
//       fontSize: size as double,
//       fontWeight: weight,
//       color: color,
//     );
//   }
// }
