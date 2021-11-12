import 'package:flutter/material.dart';
import 'package:vvplus_app/Application/CustomerUI_Bloc/Login_Bloc/login_provider.dart';
import 'package:vvplus_app/ui/pages/Login%20page/login_page.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: PrimaryColor1,
            scaffoldBackgroundColor: PrimaryColor3),
        home: const LoginPage(),
      ),
    );
  }
}
