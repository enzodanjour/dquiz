import 'package:dquiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final Color tapColor;

  NextButtonWidget(
      {required this.label,
      required this.backgroundColor,
      required this.fontColor,
      required this.borderColor,
      required this.tapColor
      }
  );

  NextButtonWidget.green({required String label})
      : this.backgroundColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.green,
        this.label = label,
        this.tapColor = Colors.greenAccent
        ;

  NextButtonWidget.white({required String label})
      : this.backgroundColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.borderColor = AppColors.border,
        this.label = label,
        this.tapColor = AppColors.lightGrey;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: TextButton(
        
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            side:MaterialStateProperty.all(
              BorderSide(color: borderColor)
            ),
            overlayColor:MaterialStateProperty.all(tapColor)
        ),
        onPressed: () {},
        child: Text(
          label,
          style: GoogleFonts.notoSans(
              fontWeight: FontWeight.w600, fontSize: 15, color: fontColor),
        ),
      ),
    );
  }
}
