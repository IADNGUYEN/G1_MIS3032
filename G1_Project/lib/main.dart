import 'package:flutter/material.dart';
import 'package:g1_project/screens/cart/cart_screen.dart';
import 'package:g1_project/screens/categories/dress_category_screen.dart';
import 'package:g1_project/screens/categories/mordenshirt_category_screen.dart';
import 'package:g1_project/screens/categories/trousers_category_screen.dart';
import 'package:g1_project/screens/categories/tshirt_category_screen.dart';
import 'package:g1_project/screens/details/details_product_screen.dart';
import 'package:g1_project/screens/home/home_screen.dart';
import 'package:g1_project/screens/login/sign_in/sign_in_screen.dart';
import 'package:g1_project/screens/login/sign_up/sign_up_screen.dart';
import 'package:g1_project/screens/login/splash/splash_screen.dart';
import 'package:g1_project/screens/profile/profile_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'G1 SHOP',
      // theme: theme(),
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

final Map<String, WidgetBuilder> routes = {
  CartScreen.routeName: (context) => CartScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  TShirtCategoryScreen.routeName: (context) => TShirtCategoryScreen(),
  MordenShirtCategoryScreen.routeName: (context) => MordenShirtCategoryScreen(),
  DressCategoryScreen.routeName: (context) => DressCategoryScreen(),
  TrousersCategoryScreen.routeName: (context) => TrousersCategoryScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
};

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: Color(0xFF757575)),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: Color(0xFF757575)),
    bodyText2: TextStyle(color: Color(0xFF757575)),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    ),
  );
}
