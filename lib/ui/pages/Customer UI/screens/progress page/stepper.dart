import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/Pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/Pages/Customer%20UI/widgets/text_style_widget.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/text_feild.dart';


class StepperBody extends StatefulWidget {
  const StepperBody({Key key}) : super(key: key);
  @override
  StepperBodyState createState() => StepperBodyState();
}

class StepperBodyState extends State<StepperBody> {

  int current_step = 2;
  List<Step> steps = [
    Step(
      title: Text(text27,style: TextStyle(color: Colors.black45),),
      content: Container(
          alignment: Alignment.centerLeft,
         ),
      // isActive: true,
    ),
    Step(
      title: Text(text29,style: TextStyle(color: Colors.black45),),
      content: Container(
          alignment: Alignment.centerLeft,
          ),
      // isActive: true,
    ),
    Step(
      title: Text(text31),
      content: Column(
          children: [
                  Text(
                    text32,
                    style: Stepperstyle(),
                  ),
            Text(
              text37,
            ),


            Padding(padding: EdgeInsets.symmetric(vertical: 10)),

            GestureDetector(
              onTap: (){
                                                                                      // directing page
              },
              child: Container(
                height: 84,
                width: 250,
                decoration: decoration4(Colors.red),
                alignment: Alignment.center,
                child: Text(text33,
                textAlign: TextAlign.center,
                style: TextStyle(color: PrimaryColor3,fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            GestureDetector(
              onTap: (){
                // directing page
              },
              child: Container(
                height: 84,
                width: 250,
                decoration: decoration4(PrimaryColor7),
                alignment: Alignment.center,
                child: Text(text34,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: PrimaryColor3,fontWeight: FontWeight.bold),
                ),
              ),
            ),
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

