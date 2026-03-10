
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
      backgroundColor:  Color.fromARGB(255, 153, 202, 96),
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
        color: const Color.fromARGB(255, 0, 0, 0),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search, color: Color.fromARGB(255, 14, 14, 14)),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart, color: Color.fromARGB(255, 36, 35, 35)),
          onPressed: () {},
        ),
      ],
    );
  }
}