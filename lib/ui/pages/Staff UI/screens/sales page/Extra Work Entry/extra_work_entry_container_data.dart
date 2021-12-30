import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_text_style.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'dart:convert';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class ExtraWorkEntryContainerData extends StatefulWidget {
  const ExtraWorkEntryContainerData({Key key}) : super(key: key);

  @override
  _ExtraWorkEntryContainerDataState createState() => _ExtraWorkEntryContainerDataState();
}

class _ExtraWorkEntryContainerDataState extends State<ExtraWorkEntryContainerData> {
  List data;

  fetchData1() async {

    http.Response response =
    await http.get(Uri.parse('https://vv-plus-app-default-rtdb.firebaseio.com/PostItemDetails.json'));
    setState(() {
      data = json.decode(response.body);
    });
  }

  @override
  void initState() {
    fetchData1();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return data == null
        ? const SizedBox(height: 1,)
        : SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){print("no");},
            child: Padding(
              padding: const EdgeInsets.only(top: 32, left: 11),
              child: Container(
                alignment: Alignment.center,
                height: 134,
                width: SizeConfig.getWidth(context) * .95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: primaryColor3,
                  boxShadow: const [
                    BoxShadow(
                      color: primaryColor5,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 10),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Name: Chandra Shekhar",
                            style: containerTextStyle6(),
                          ),
                          const SizedBox(height: 16,),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Booking ID: 229/\nUBOOK/PN/12",
                                    style: containerTextStyle3(),
                                  ),
                                  const SizedBox(height: 8,),
                                  Text(
                                    "Unit: GA-105(C),\nPH-06",
                                    style: containerTextStyle3(),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 41,),
                              Text(
                                "Booking Date:   22/Sept/2012\nUnit Category:  Appt 2Bhk(661sqft)\nFloor:                  First FloorProject\nName:   AIIMS-01(06)/C/GA/66Tax\nStructure:   GST 01 PER",
                                style: containerTextStyle2(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: data == null ? 0 : data.length,
      ),
    );
  }
}