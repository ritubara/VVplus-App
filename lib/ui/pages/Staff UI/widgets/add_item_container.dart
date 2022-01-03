import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_text_style.dart';
import 'package:vvplus_app/ui/widgets/constants/assets.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class AddItemContainer extends StatelessWidget {
  final String itemNameText;
  final String orderQtyText;
  final String rateText;
  final String amountText;
  const AddItemContainer({
    Key key,
    this.itemNameText,
    this.orderQtyText,
    this.rateText,
    this.amountText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        alignment: Alignment.center,
        height: 92,
        width: SizeConfig.getWidth(context),
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
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 10),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(itemNameText,
                      style: containerTextStyle1(),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Order Qty.:",
                              style: containerTextStyle2(),
                            ),
                            const Text( ""//reqQty,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),

                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Rate:",
                          style: containerTextStyle2(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Amount:",
                          style: containerTextStyle2(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4,top: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 2,
                        ),
                        Text(orderQtyText,
                          style: containerTextStyle2(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(rateText,
                          style: containerTextStyle2(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(amountText,
                          style: containerTextStyle2(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50,top: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(icon15),
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
  }
}