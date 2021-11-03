import 'package:flutter/material.dart';
import 'package:vvplus_app/domain/value_objects/validation.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/screens/homepage/home_page.dart';
import 'package:vvplus_app/ui/Pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/Pages/Customer%20UI/widgets/text_style_widget.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/home%20page/staff_homepage.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/assets.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';
import 'package:vvplus_app/ui/widgets/constants/text_feild.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _phoneNumber = TextEditingController();

  signInCheckDetail() {
    final _form1 = _formKey.currentState;
    final _form2 = _formKey2.currentState;
    if (_form1.validate() && _form2.validate()) {
      _performLogin();
    }
  }
  void _performLogin() {
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => const HomePage()));
  }



  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
              color: PrimaryColor3,
            ),
            child: Stack(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.only(
                    left: 47,
                    top: 39,
                  ),
                  child: Image.asset(
                    image1,
                    scale: 1.5,
                    height: 241,
                    width: 286,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    left: 240,
                    top: 25,
                  ),
                  child: Image.asset(
                    image2,
                    scale: 1.5,
                    height: 134,
                    width: 68,
                  ),
                ),
                _buildBottomPart(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildBottomPart(BuildContext context) {
    var width = SizeConfig.getWidth(context);
    return Padding(
      padding: const EdgeInsets.only(top: 228,left: 37),
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Text(
              text1,
              style: t1Style(),
            ),

            const SizedBox(height: 10,),

             Text(
              text2,
              style: simpleTextStyle2(),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20,),

            Container(

              padding: padding2,
              color: PrimaryColor3,
              height: 51.0,

              child: Form(
                key: _formKey,
                child: TextFormField(
                  controller: _phoneNumber,
                  keyboardType: TextInputType.phone,
                  style:const TextStyle(
                    color: TextColor4,
                    decorationColor: decorationColor1,
                  ),
                  decoration: textFieldInputDecorationWithCountryCode(),
                  validator: validateMobile,

                ),
              ),
            ),

            const SizedBox(height: 20,),

            Text(
              text3,
              style: t2Style(),
              textAlign: TextAlign.center,
            ),

            Text(
              text4,
              style: t2Style(),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 17,),

             Row(
               children: [
               Padding(
               padding: padding3,

               child: Text(
                 text5,
                 textAlign: TextAlign.center,
                 style: simpleTextStyle2(),
               ),
             ),
               ],
             ),

            const SizedBox(height: 25),

            Container(
              height: 55,
              width: 500,
              padding: padding2,
              decoration: decoration1(),
              child: Center(
                child: Form(
                  key: _formKey2,
                    child: const OTPInputDecoration()),
              ),
            ),

            const SizedBox(height: 46,),

            Row(
              children: [
                RoundedButton3("Sign In",
                        (){signInCheckDetail();}
                        ),
                const SizedBox(width: 20,),
                RoundedButton3("Sign In Staff",(){
                  Navigator.push( context, MaterialPageRoute(
                      builder: (context) => const HomePageStaff()));

                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}