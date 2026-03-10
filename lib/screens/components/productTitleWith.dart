import 'package:bagshop/models/product.dart';
import 'package:flutter/material.dart';


class ProductTitleWith extends StatelessWidget {
  final Product product;

  const ProductTitleWith({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 40),

          const Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.black),
          ),

          const SizedBox(height: 10),

          Text(
            product.title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),

          const SizedBox(height: 20),

          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Price\n",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.black),
                    ),
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 20),

              Expanded(
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}