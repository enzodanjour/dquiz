import 'package:dquiz/core/app_colors.dart';
import 'package:flutter/material.dart';

class LevelButtonWidget extends StatelessWidget {
  const LevelButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: AppColors.levelButtonFacil,
        border: Border.fromBorderSide(BorderSide(color: AppColors.levelButtonBorderFacil))
      ),
      child: Text(
        "Fácil",
      ),
    );
  }
}