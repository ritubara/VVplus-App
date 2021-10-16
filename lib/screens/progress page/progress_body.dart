import 'package:flutter/material.dart';
import 'package:vvplus_app/components/colors.dart';

import 'package:vvplus_app/components/text_feild.dart';
import 'package:vvplus_app/components/widgets.dart';

class ProgressBody extends StatefulWidget {
  @override
  ProgressBodyState createState() => ProgressBodyState();
}

class ProgressBodyState extends State<ProgressBody> {
  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text("Booking amount"),
      content: Text('Hello!'),
      isActive: true,
    ),
    Step(
      title: Text('Construction Start'),
      content: Text('World!'),
      isActive: true,
    ),
    Step(
      title: Text('Plinth Level'),
      content: Text('Hello World!'),
      state: StepState.complete,
      isActive: true,
    ),
    Step(
      title: Text('Ground Floor Roof Level'),
      content: Text('Hello World!'),
      state: StepState.complete,
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child:Container (
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: 160,
                width: 320,
                decoration: decoration2(),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            Boxheading1,
                            style: ContainerHeading2(),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            BoxText1,
                            style: ContainerText2(),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            BoxText2,
                            style: ContainerText2Bold(),
                          ),
                        ),
                        Text(
                          BoxText3,
                          style: ContainerText2(),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            BoxLink,
                            style: ContainerHeading1(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(
                    child: Theme(
                      data: ThemeData(
                          accentColor: Colors.orange,
                          primarySwatch: Colors.orange,
                          colorScheme: ColorScheme.light(
                              primary: StepperColor,

                          )
                      ),
                      child: Stepper(
                    currentStep: this.current_step,
                   /* onStepContinue:(){
                      if(currentStep!=1){
                        go(1);
                      }
                    },
                        onStepCancel: (){
                      if(currentStep!=0){
                        go(-1);
                      }
                        },
                        controlsBuilder: (BuildContext context,
                        {VoidCallback onStepContinue, VoidCallbackonStepCancel}){
                      return Container(

                      );
                        },*/
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
            ),
          ],
        ),
      ),
    );
  }
}



