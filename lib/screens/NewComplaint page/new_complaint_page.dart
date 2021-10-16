import 'package:flutter/material.dart';
import 'package:vvplus_app/components/colors.dart';
import 'package:vvplus_app/components/widgets.dart';
import 'package:vvplus_app/screens/homepage/home_page.dart';
import 'package:vvplus_app/utilities/rounded_button.dart';

class ComplaintPage extends StatefulWidget{
  @override
  _ComplaintPageState createState() => _ComplaintPageState();
}
class _ComplaintPageState extends State<ComplaintPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "New Complaint",
          style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        toolbarHeight: 107,
        titleTextStyle: TextStyle(color: PrimaryColor3),
        backgroundColor: PrimaryColor1,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: PrimaryColor3,
        ),
        child: Stack(
          children: <Widget>[
          Positioned(
          top: 12,
          left: 27,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.only(left: 1,right: 48),
                  decoration: decoration1(),
                  child: Center(
                    child:TextFormField(
                      keyboardType: TextInputType.number,
                      style: simpleTextStyle(),
                      decoration: textFieldInputDecoration("Name"),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.only(left: 1,right: 48),
                  decoration: decoration1(),
                  child: Center(
                    child:TextFormField(
                      keyboardType: TextInputType.number,
                      style: simpleTextStyle(),
                      decoration: textFieldInputDecoration("Branch and City  "),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.only(left: 1,right: 48),
                  decoration: decoration1(),
                  child: Center(
                    child:TextFormField(
                      keyboardType: TextInputType.number,
                      style: simpleTextStyle(),
                      decoration: textFieldInputDecoration("Unit Number"),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.only(left: 1,right: 48),
                  decoration: decoration1(),
                  child: Center(
                    child:TextFormField(
                      keyboardType: TextInputType.number,
                      style: simpleTextStyle(),
                      decoration: textFieldInputDecoration("Write a detailed summary of your problem or you may upload a photo of a hand written letter"),
                    ),
                  ),
                ),
                const SizedBox(height: 46,),
                GestureDetector(
                  onTap: () {
                    Navigator.push( context, MaterialPageRoute(
                        builder: (context) => HomePage()));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: PrimaryColor1,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * .88,
                    height: 60,
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
                )
              ],
            ),
          ),
        ),
          ],
        ),
      ),
    );
  }
}