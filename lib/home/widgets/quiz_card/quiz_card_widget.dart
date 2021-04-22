import 'package:dquiz/core/app_colors.dart';
import 'package:dquiz/core/app_text_styles.dart';
import 'package:dquiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16,16,16,0),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.border
          )
        ),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(AppImages.blocks),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Gerenciamento de Estado', 
            style: AppTextStyles.heading15
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  "3 de 10",style: AppTextStyles.body11,
                ),
              ),
              Expanded(
                flex: 2,
                child: LinearProgressIndicator(
                  value: 0.3,
                  backgroundColor: AppColors.chartSecondary,
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}