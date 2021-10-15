import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ViewHouseBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
        child: Column(
        children: [
        CarouselSlider(
        //Carousel Slider
        items: [
        Container(
        margin: EdgeInsets.all(5.0),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8.0),
    image: DecorationImage(
    image: AssetImage(
    "assets/ducati-superleggera-v4-front-3-quarter-view.jpg"),
    fit: BoxFit.fill,
    ),
    ),
    ),
    Container(
    margin: EdgeInsets.all(5.0),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8.0),
    image: DecorationImage(
    image: AssetImage("assets/panigale v2.jpg"),
    fit: BoxFit.fill,
    ),
    ),
    ),
    Container(
    margin: EdgeInsets.all(5.0),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8.0),
    image: DecorationImage(
    image: AssetImage("assets/panigale v4.jpg"),
    fit: BoxFit.fill,
    ),
    ),
    ),
    ],
    options: CarouselOptions(
    height: 250.0,
    enlargeCenterPage: true,
    autoPlay: true,
    autoPlayCurve: Curves.decelerate,
    enableInfiniteScroll: true,
    autoPlayAnimationDuration: Duration(milliseconds: 1000),
    viewportFraction: 1.0,
    ),
    ),
    Stack(
      children: <Widget>[
        Positioned(),
      ],

    ),
    ],
    ),
        ),
    );
  }
}
