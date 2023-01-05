import 'package:flutter/material.dart';
import 'package:shopappp/providers/orders.dart';
import 'package:shopappp/screens/cart_screen.dart';
import 'package:shopappp/providers/cart.dart';
import 'package:shopappp/screens/orders_screen.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: ' My Shop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Lato',
          accentColor: Colors.orange,
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
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
