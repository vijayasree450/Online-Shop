
import 'package:bagshop/models/product.dart';
import 'package:bagshop/screens/components/bodys.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Details extends StatelessWidget {
  final Product product;

  const Details({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: buildAppBar(context),
      body: Body(product: product), 
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.blue,
        statusBarIconBrightness: Brightness.light,
      ),
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: Colors.white,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }
}