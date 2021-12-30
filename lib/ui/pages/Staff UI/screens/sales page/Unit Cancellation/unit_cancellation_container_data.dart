import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_text_style.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'dart:convert';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class UnitCancellationContainerData extends StatefulWidget {
  const UnitCancellationContainerData({Key key}) : super(key: key);

  @override
  _UnitCancellationContainerDataState createState() => _UnitCancellationContainerDataState();
}

class _UnitCancellationContainerDataState extends State<UnitCancellationContainerData> {
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
              padding: const EdgeInsets.only(top: 32, left: 15),
              child: Container(
                alignment: Alignment.center,
                height: 134,
                width: SizeConfig.getWidth(context) * .93,
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
                            "Name: Tripurari Jha ",
                            style: containerTextStyle6(),
                          ),
                          const SizedBox(height: 16,),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Booking ID: 101/\nUBOOK/PN/13",
                                    style: containerTextStyle3(),
                                  ),
                                  const SizedBox(height: 8,),
                                  Text(
                                    "Unit: AD-202(D),\nPH-03",
                                    style: containerTextStyle3(),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 35,),
                              Text(
                                "Booking Date:    06/Nov/2013\nUnit Category:   Appt 2Bhk(750sqft)\nFloor:                   Second Floor\nPhase:                 Patna PH-03/RR\nUnit Area:           1150\nNet Unit Cost:    16,37,000",
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