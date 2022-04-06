import 'package:flutter/material.dart';
import 'package:shop_app/screens/products_overview_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop App',
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme(
            primary: Colors.purple,
            onPrimary: Colors.white,
            secondary: Colors.amber,
            onSecondary: Colors.white,
            error: Colors.red[300]!,
            onError: Colors.white,
            background: Colors.purple[50]!,
            onBackground: Colors.black87,
            surface: Colors.grey[400]!,
            onSurface: Colors.black87,
            brightness: Brightness.light),
      ),
      home: ProductsOverviewScreen(),
    );
  }
}
