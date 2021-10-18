import 'package:flutter/material.dart';
import 'package:vvplus_app/constants/assets.dart';
import 'package:vvplus_app/screens/view%20house%20page/caruosel_slider.dart';
import 'package:vvplus_app/utilities/rounded_button.dart';
import 'package:vvplus_app/widgets/decoration_widget.dart';
import 'package:vvplus_app/widgets/text_style_widget.dart';

class ViewHouseBody extends StatefulWidget {
  const ViewHouseBody({Key key}) : super(key: key);

  @override
  ViewHouseState createState() => ViewHouseState();
}

class ViewHouseState extends State<ViewHouseBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 313,
            width: 410,
            child: ViewCarouselSlider(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "House Detail",
                  style: simpleTextStyle11(),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Image.asset(
                        icon1,
                        scale: 0.8,
                      ),
                      color: Colors.grey,
                      onPressed: () {},
                    ),
                    Text("3 Bedrooms", style: simpleTextStyle10()),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                    IconButton(
                      icon: Image.asset(
                        icon2,
                        scale: 0.1,
                      ),
                      color: Colors.grey,
                      onPressed: () {},
                    ),
                    Text("3 Bathrooms", style: simpleTextStyle10()),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Image.asset(
                        icon3,
                        scale: 0.8,
                      ),
                      color: Colors.grey,
                      onPressed: () {},
                    ),
                    Text(
                      "1 Parking",
                      style: simpleTextStyle10(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 28),
                    ),
                    IconButton(
                      icon: Image.asset(
                        icon4,
                        scale: 0.8,
                      ),
                      color: Colors.grey,
                      onPressed: () {},
                    ),
                    Text("2 Floors", style: simpleTextStyle10()),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  children: [
                    Text("Plot area: 777sqrt", style: simpleTextStyle10()),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 25)),
                    Text("Carpet area: 739sqrt", style: simpleTextStyle10()),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Closest Utilities",
                        style: simpleTextStyle12(),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                      height: 59,
                      width: 359,
                      decoration: decoration2(),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.local_hospital),
                          ),
                          Text("Emergency", style: simpleTextStyle10()),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 60)),
                          Text("3 Km Away", style: simpleTextStyle13())
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    Container(
                      height: 59,
                      width: 359,
                      decoration: decoration2(),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.apartment_sharp),
                          ),
                          Text("Schools", style: simpleTextStyle10()),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 70)),
                          Text("2 Km Away", style: simpleTextStyle13())
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    Container(
                      height: 59,
                      width: 359,
                      decoration: decoration2(),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.school),
                          ),
                          Text("Colleges", style: simpleTextStyle10()),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 70)),
                          Text("1.7 Km Away", style: simpleTextStyle13())
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("More",
                          style: simpleTextStyle14(),
                        ),
                      ],
                    ),
                    Padding(
    padding: EdgeInsets.symmetric(horizontal:30,vertical: 10),
                    child: RoundedButton1(
                      text: "View Technical Specs of House",
                      press: () {},
                    ),
    ),

                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
