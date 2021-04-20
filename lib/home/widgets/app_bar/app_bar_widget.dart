import 'package:dquiz/core/app_gradients.dart';
import 'package:dquiz/core/app_text_styles.dart';
import 'package:dquiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget() : 
  super(
    preferredSize: Size.fromHeight(250), 
    child: Container(
      height: 250,
      decoration: BoxDecoration(gradient: AppGradients.linear),
      child: Stack(
        children: [
          Container(
            height: 161,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Olá, ",
                    style: AppTextStyles.title,
                    children: [
                      TextSpan(
                        text: 'Enzo',
                        style: AppTextStyles.titleBold
                      )
                    ]
                  )
                ),    
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage("https://avatars.githubusercontent.com/u/35856303?v=4")
                    )              
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.0,1.5),
            child: ScoreCardWidget())
        ],
      ),
    )
  );

}