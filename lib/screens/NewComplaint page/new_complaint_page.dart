import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vvplus_app/constants/colors.dart';
import 'package:vvplus_app/constants/text_feild.dart';
import 'package:vvplus_app/widgets/decoration_widget.dart';
import 'package:vvplus_app/widgets/text_style_widget.dart';
import 'package:vvplus_app/widgets/appbar_widget.dart';
import 'package:vvplus_app/screens/homepage/home_page.dart';

class ComplaintPage extends StatefulWidget{
  const ComplaintPage({Key key}) : super(key: key);

  @override
  _ComplaintPageState createState() => _ComplaintPageState();
}
class _ComplaintPageState extends State<ComplaintPage>{

  String valueChoose;
  List listItem = [
    "Selection","Item2","Item3"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(appText2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: PrimaryColor3,
            ),
            child: Stack(
              children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 19),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.only(left: 35,right: 36),
                    decoration: decoration1(),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: simpleTextStyle7(),
                      decoration: textFieldInputDecoration("Name"),
                    ),
                  ),
                  const SizedBox(height: 13),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.only(left: 35,right: 36),
                    decoration: decoration1(),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: simpleTextStyle7(),
                      decoration: textFieldInputDecoration("Branch and City  "),
                    ),
                  ),
                  const SizedBox(height: 13),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.only(left: 35,right: 36),
                    decoration: decoration1(),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: simpleTextStyle7(),
                      decoration: textFieldInputDecoration("Unit Number"),
                    ),
                  ),
                  const SizedBox(height: 13),
                  Container(
                    height: 97,
                    padding: const EdgeInsets.only(left: 35,right: 36),
                    decoration: decoration1(),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: simpleTextStyle7(),
                      decoration: textFieldInputDecoration("Write a detailed summary "),
                    ),
                  ),
                 const SizedBox(height: 1,),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text(
                      "Choose the type of complaint",
                      style: simpleTextStyle7(),
                    ),
                  ),
                  const SizedBox(height: 1),
                  Padding(
                    padding: const EdgeInsets.only(left: 35,right: 36),
                    child: Center(
                      child: Container(
                        decoration: decoration3(),
                        child: DropdownButton(
                          hint: const Text("Selection"),
                          dropdownColor: Colors.white,
                          icon: const Icon(Icons.arrow_drop_down),
                          iconSize: 40,
                          isExpanded: true,
                          iconEnabledColor: Colors.red,
                          style: const TextStyle(color: Colors.black,fontSize: 20),
                          value: valueChoose,
                          onChanged: (newValue){
                            setState(() {
                              valueChoose = newValue;
                            });
                          },
                          items: listItem.map((valueItem){
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 3,),
                  const Padding(
                    padding: EdgeInsets.only(left: 35),
                    child: Text(
                      "Constrcution? Poor Quality work? Legal matter? Cancelation?    Speed of work is slow? Land registry? ",
                      style: TextStyle(color: PrimaryColor2, fontSize: 11),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                      padding: const EdgeInsets.only(left: 35,right: 36),
                      child: DottedBorder(
                        color: Colors.black,
                        strokeWidth: 1.5,
                        dashPattern: const [10,6],
                        child: Container(
                          child: const Padding(
                            padding: EdgeInsets.only(left: 50,right: 36,top: 84),
                            child: Text(
                              "Browse to upload photo of house or photo of letter",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          height:140,
                          width: double.infinity,
                          color:PrimaryColor3,
                        ),
                      )
                  ),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {
                      Navigator.push( context, MaterialPageRoute(
                          builder: (context) => HomePage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: PrimaryColor1,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * .83,
                        height: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              "Upload Complaint",
                              style: TextStyle(
                                color: PrimaryColor3,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}