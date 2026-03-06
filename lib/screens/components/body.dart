import 'package:bagshop/screens/components/item_card.dart' show ItemCard;
import 'package:flutter/material.dart';
import 'package:bagshop/models/product.dart';
import 'package:bagshop/screens/components/categorries.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Women",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const Categories(),

        const SizedBox(height: 20),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.70,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                return ItemCard(
                  product: products[index],
                  press: () {},
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

