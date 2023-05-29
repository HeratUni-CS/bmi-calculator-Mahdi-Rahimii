import 'package:bmi_claculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

enum Gender{
  male,
  female,
}

class InputPage extends StatelessWidget {
  Color maleCardColor = inactiveColor;
  Color femaleCardColor = inactiveColor;

  Gender? SelectedGender;
  int height = 175;
  int weight = 70;
  int age = 20;



  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ReusableWidget(
                  onPressed:(){
                    setState((){
                      SelectedGender = Gender.male;
                    });
                  }
                  color: (SelectedGender == Gender.male) ? ActiveColor : inactiveColor,
                  child:
                      iconData(iconData: FontAwesomeIcons.mars, lable: "Male"),
                ),
                ReusableWidget(
                  onPressed: (){
                    setState((){
                      SelectedGender = Gender.female;
                    });
                  }
                  color: (SelectedGender == Gender.female) ? ActiveColor : inactiveColor,
                  child: iconContent(
                      iconData: FontAwesomeIcons.venus, lable: "FEMALE"),
                ),
              ],
            ),
          ),
          ReusableWidget(
            color: ActiveColor,
            child: Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('HEIGHT',
                style: KLableStyle
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(),
                    style: KNumberStyle,
                    ),
                    Text('cm',
                    style: KLableStyle,
                    ),
                     SliderTheme(
              data: SliderThemeData,
              trackHeight: 1,
              thumbShape: RoundRangeSliderThumbShape(enabledThumbRadius: 15),
              overlayShape:RoundRangeSliderThumbShape(overlayRaduis: 30),
              activeTrackColor: Colors.white,
                inactiveTrackColor: Color(0xFFCCCCCC),
                thumbColor: Color(0xFFEB1424),
                overlayColor: Color(0xFF288282),
              child: Slider(
                value: height.toDouble(),
                onChanged: (double value){
                  setState((){
                    height = value.round();
                  });
                },
                min: 120,
                max: 220,
              ),
            ),
                  ],
                )
              ]
            )
            ),
          Expanded(
            child: Row(
              children: [
                ReusableWidget(
                  color: ActiveColor,
                  child:Column(children: [
                    Text('WEIGHT',
                    style: KLableStyle,
                    ),
                    Text(weight.toString(),KNumberStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      RoundIconButton(
                        iconData: icons.remove,
                        onPressed: () {
                          setState((){
                            weight--;
                          });
                        },
                        ),
                      RoundIconButton(iconData: icons.add,
                        onPressed: (){
                          setState((){
                            weight++;
                          });
                        },
                      ),
                    ],)
                  ),
                  ),
                ReusableWidget(color: ActiveColor,
                  child:Column(children: [
                    Text('AGE',
                    style: KLableStyle,
                    ),
                    Text(age.toString(),KNumberStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      RoundIconButton(
                        iconData: icons.remove,
                        onPressed: () {
                          setState((){
                            age--;
                          });
                        },
                        ),
                      RoundIconButton(iconData: icons.add,
                        onPressed: (){
                          setState((){
                            age++;
                          });
                        },
                      ),
                    ],)
                  ),
                ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ResultPage();
              },
              ),
              ),
            },
            child: Container(
              width: double.infinity,
              height: 80,
              color: KColorBottom,
              margin: EdgeInsets.all(10),
              child: Center(child: Text('CALCULATE YOUR BMI'),
              style: KLargeButton,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData iconData;
  final void Function () onPressed;

  RoundIconButton({required this.iconData, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed: onPressed,fillColor: Color(0xFF293030),
      shape: CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: const Icon(IconData,
        size: 30,
      ),
    );
  }
}