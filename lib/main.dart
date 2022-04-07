import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/product_detail_screen.dart';
import '../screens/products_overview_screen.dart';
import '../providers/products.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Products(),
      child: MaterialApp(
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
        home: const ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (_) => const ProductDetailScreen(),
        },
      ),
    );
  }
}
