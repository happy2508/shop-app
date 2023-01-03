import 'package:flutter/material.dart';
import '/screens/products_overview_screens.dart';
import 'screens/product_detail_screen.dart';
import './providers/products.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        title: ' My Shop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Lato',
          accentColor: Colors.orange,
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Myshop"),
      ),
      body: Center(child: Text("lol")),
    );
  }
}
