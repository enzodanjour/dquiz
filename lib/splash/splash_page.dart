import 'package:dquiz/core/app_gradients.dart';
import 'package:dquiz/core/core.dart';
import 'package:dquiz/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 2)).then((_)
       => Navigator.pushReplacement(
         context, CupertinoPageRoute(builder: (context) => HomePage()
         )//evitar voltar tela
        )
      );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.linear
        ),
        child: Center(
          child: Image.asset(AppImages.logo)
        ),
      ),
    );
  }
}
