import 'package:dquiz/chalenge/next_button/next_button_widget.dart';
import 'package:dquiz/core/core.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text('Parabéns', 
                style: AppTextStyles.heading40
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text.rich(
              TextSpan(
              text: 'Você concluiu',style: AppTextStyles.body,
                children: [
                  TextSpan(text:'\nGerenciamento de estado',style: AppTextStyles.bodyBold),
                  TextSpan(text:'\n Com 6 de 10',style: AppTextStyles.body),
                ]
              ),
              textAlign: TextAlign.center,
            ), 
            NextButtonWidget.purple(label:'Compartilhar' ,onTap: (){}),
            NextButtonWidget.transparent(label:'Voltar ao início' ,onTap: (){})
          ],
        ),
      ),
    );
  }
}
