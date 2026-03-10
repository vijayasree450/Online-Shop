import 'package:flutter/material.dart';
import 'package:bagshop/models/product.dart';

class ColorAndSize extends StatelessWidget {
  final Product product;

  const ColorAndSize({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            const Text("Colors"),
            const SizedBox(height: 10),

            Row(
              children: [
                ColorDot(color: product.color, isSelected: true),
                const ColorDot(color: Colors.black),
                const ColorDot(color: Colors.brown),
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 50),

            RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black),
                children: [
                  const TextSpan(text: "Size\n"),
                  TextSpan(
                    text: "${product.size} cm",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, right: 5),
      padding: const EdgeInsets.all(2),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? const Color(0xFF356C95) : Colors.transparent,
        ),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}