import 'package:flutter/material.dart';
import 'package:vvplus_app/constants/colors.dart';
import 'package:vvplus_app/constants/text_feild.dart';
import 'package:vvplus_app/utilities/rounded_button.dart';

class StepperBody extends StatefulWidget {
  const StepperBody({Key key}) : super(key: key);
  @override
  StepperBodyState createState() => StepperBodyState();
}

class StepperBodyState extends State<StepperBody> {

  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text(text27),
      content: Container(
          alignment: Alignment.centerLeft,
          child: Text(text28)),
      // isActive: true,
    ),
    Step(
      title: Text(text29),
      content: Container(
          alignment: Alignment.centerLeft,
          child: Text(text30)),
      // isActive: true,
    ),
    Step(
      title: Text(text31),
      content: Column(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                child: Text(text32,style: TextStyle(color: TextColor3),)),
            RoundedButton4(text33,(){}),
            RoundedButton5(text34,(){}),
          ],
      ),
      //state: StepState.complete,
      isActive: true,
    ),
    Step(
      title: Text(text35),
      content: Container(
          alignment: Alignment.centerLeft,
          child: Text(text36)),
      // state: StepState.complete,
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Theme(
            data: ThemeData(
                accentColor: StepperColor1,
                primarySwatch: StepperColor1,
                colorScheme: const ColorScheme.light(
                  primary: StepperColor,

                )
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Stepper(
                controlsBuilder: (context, {onStepContinue, onStepCancel}) {
                  return Column(
                      children:[
                        Container(

                        ),
                      ]
                  );
                },
                currentStep: this.current_step,
                steps: steps,
                type: StepperType.vertical,
                onStepTapped: (step) {
                  setState(() {
                    current_step = step;
                  });
                },
                onStepContinue: () {
                  setState(() {
                    if (current_step < steps.length - 1) {
                      current_step = current_step + 1;
                    } else {
                      current_step = 0;
                    }
                  });
                },
                onStepCancel: () {
                  setState(() {
                    if (current_step > 0) {
                      current_step = current_step - 1;
                    } else {
                      current_step = 0;
                    }
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

