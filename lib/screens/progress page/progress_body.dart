import 'package:flutter/material.dart';
import 'package:vvplus_app/components/widgets.dart';

class ProgressBody extends StatefulWidget {
  @override
  ProgressBodyState createState() => ProgressBodyState();
}


class ProgressBodyState extends State<ProgressBody> {
  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text('Step 1'),
      content: Text('Hello!'),
      isActive: true,
    ),
    Step(
      title: Text('Step 2'),
      content: Text('World!'),
      isActive: true,
    ),
    Step(
      title: Text('Step 3'),
      content: Text('Hello World!'),
      state: StepState.complete,
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 50,
              child: Container(
                height: 160,
                width: 320,
                decoration: decoration2(),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                      top: 30,
                      child: Text("Construction on hold",
                        style: ContainerHeading2(),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      child: Text("Amount paid to company: 21.5 lakhs",
                        style: ContainerText2(),
                      ),
                    ),
                    Positioned(
                      top: 80,
                      child: Text("Amount dues: 8 lakhs",
                        style: ContainerText2Bold(),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      child: Text("Please pay the dues to resume construction",
                        style: ContainerText2(),
                      ),
                    ),
                    Positioned(
                      top: 130,
                      child: Text("Call Customer Care?",
                        style: ContainerHeading1(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
                
                  
             Positioned(
              child: Container(
                child: Stepper(
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
          ],
    );
  }
}
        
      
       