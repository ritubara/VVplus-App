import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_choices/search_choices.dart';
import 'package:vvplus_app/Application/Bloc/Customer_Bloc/NewComplaint_Bloc/new_complaint_bloc.dart';
import 'package:vvplus_app/ui/Pages/Customer%20UI/widgets/text_style_widget.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/widgets/constants/assets.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';
import 'package:vvplus_app/ui/widgets/constants/text_feild.dart';


class NewComplaintPageBody extends StatefulWidget{
  const NewComplaintPageBody({Key key}) : super(key: key);
  @override
  _NewComplaintPageBodyState createState() => _NewComplaintPageBodyState();
}
class _NewComplaintPageBodyState extends State<NewComplaintPageBody>{

  @override
  Widget build(BuildContext context) {
    final bloc = NewComplaintPageBloc();
    return SingleChildScrollView(
          child: Container(
            width: SizeConfig.getWidth(context),
            height: SizeConfig.getHeight(context),
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
                    padding: padding1,
                    decoration: decoration1(),
                    child: const textFieldDecoration(),
                  ),
                  const SizedBox(height: 13),
                  Container(
                    height: 50,
                    padding: padding1,
                    decoration: decoration1(),
                    child: const textFieldDecoration(),
                  ),
                  const SizedBox(height: 13),
                  Container(
                    height: 50,
                    padding: padding1,
                    decoration: decoration1(),
                    child: const textFieldDecoration(),
                  ),
                  const SizedBox(height: 13),
                  Container(
                    height: 97,
                    padding: padding1,
                    decoration: decoration1(),
                    child: const textFieldDecoration(),
                  ),
                 const SizedBox(height: 1,),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text(
                      text25,
                      style: simpleTextStyle7(),
                    ),
                  ),
                  const SizedBox(height: 1),
                  Padding(
                    padding: padding1,
                    child: Center(
                      child: Container(
                        height: 50,
                        decoration: decoration3(),
                        child: StreamBuilder(
                            stream: bloc.outDropField1,
                            builder: (context, snapshot) {
                              return SearchChoices.single(
                                icon: const Icon(Icons.arrow_drop_down),
                                iconSize: 30,
                                iconEnabledColor: TextColor3,
                                style: const TextStyle(color: PrimaryColor2,fontSize: 20),
                                underline: "",
                                padding: 1,
                                isExpanded: true,
                                hint: const Text(text22),
                                value: snapshot.data,
                                onChanged: bloc.inDropField1,
                                items:(bloc.names != null && bloc.names.isNotEmpty)
                                    ? bloc.names.map((item) {
                                  return DropdownMenuItem(
                                    value: item,
                                    child: Text(item),);}).toList():[],
                              );
                            }
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 3,),
                   Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text(
                      text26,
                      style: simpleTextStyle10(
                        Colors.black45,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                      padding: padding1,
                      child: DottedBorder(
                        color: PrimaryColor2,
                        strokeWidth: 1.5,
                        dashPattern: const [10,6],
                        child: Container(
                          child: Column(
                            children:  [
                              Padding(
                                  padding: padding5,
                                  child: Image.asset(image3)
                              ),
                              Padding(
                                  padding: padding6,
                                  child: Image.asset(image4)
                              ),
                                Padding(
                                padding: padding7,
                                child: const Text(
                                  text23,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          height:140,
                          width: double.infinity,
                          color:PrimaryColor3,
                        ),
                      )
                  ),
                  const SizedBox(height: 12),
                  GestureDetector(                                                   //Onpressed
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: PrimaryColor1,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        width: SizeConfig.getWidth(context) * .83,
                        height: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              text24,
                              style: simpleTextStyle1(),
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
        );
  }
}
