import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopappp/providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  //final String title;
  //final double price;

  //ProductDetailScreen(this.title, this.price);
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)?.settings.arguments as String; //is the id!
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              child: Image.network(
                loadedProduct.imageUrl,
                fit: BoxFit.cover,
              ),
              width: double.infinity,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '\$${loadedProduct.price}',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Text(
                loadedProduct.description,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
            )
          ],
        ),
      ),
    );
  }
}
