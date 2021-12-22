import 'package:catalog/screens/homepage.dart';
import 'package:catalog/screens/loginpage.dart';
import 'package:catalog/utils/routes.dart';
import 'package:catalog/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoute.HomeRoute,
      routes: {
        MyRoute.HomeRoute: (context) => HomePage(),
        MyRoute.LoginRoute: (context) => LoginPage(),

      }
    );
  }
}
