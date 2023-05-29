 import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_widget.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result'),
              style: KTitleTextStyle,
            ), 
            ),
            Expanded(
              flex: 5,
              child: ReusableWidget(
                color: KActiveColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      Text("NORMAL",
                      style: KResultTextStyle,
                      ),
                      Text(
                        '23'
                        style: KBMITextStyle,
                      ),
                      Text(
                        'You are good to go',
                        textAlign: TextAlign.center,
                        style: KBodyTextStyle,
                      )
                ]),
              ) ,
              ),
      ]),
    );
  }
}
