import 'package:bagshop/models/product.dart' show Product;
import 'package:flutter/material.dart';
class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;

  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: GestureDetector(
        onTap: press,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(product.image),
              ),
            ),
        
            const SizedBox(height: 8),
        
            Text(
              product.title,
              style: const TextStyle(color: Colors.black54),
            ),
        
            Text(
              "\$${product.price}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}