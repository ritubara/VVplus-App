import 'package:flutter/material.dart';
import 'components/colors.dart';
import 'screens/Login page/login_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: PrimaryColor1,
          scaffoldBackgroundColor: PrimaryColor3),
      home: const LoginPage(),
    );
  }
}

