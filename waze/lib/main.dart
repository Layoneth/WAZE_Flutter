import 'package:flutter/material.dart';
import 'package:waze/pages/intro_page.dart';
import 'package:waze/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Waze App',
      home: IntroPage(),

      theme: ThemeData(
        primarySwatch: Colors.amber,
        scaffoldBackgroundColor: Colors.black87,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),

        appBarTheme: AppBarTheme(
          color: Colors.black87,
          iconTheme: IconThemeData(
            color: Colors.white
          ),
        )
      ),
      routes: getAplicationRoutes(),
    );
  }
}