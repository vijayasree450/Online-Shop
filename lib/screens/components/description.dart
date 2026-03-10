import 'package:bagshop/models/product.dart';
import 'package:bagshop/screens/components/color_and_size.dart';
import 'package:flutter/material.dart';
class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Column(
        children: <Widget>[
          // ColorAndSize(product: product),
          const SizedBox(height: 20),
          Text(product.description,
          style: TextStyle(height: 1.5,   color: Colors.black,),
          
          ),
        ],
      ),
    );
  }
}