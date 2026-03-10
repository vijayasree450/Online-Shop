import 'package:flutter/material.dart';
import 'package:bagshop/models/product.dart';
import 'package:bagshop/screens/components/productTitleWith.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  height: size.height,
                  color: Colors.white,
                ),

                ColorSection(
                  size: size,
                  product: product,
                ),

                ProductTitleWith(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColorSection extends StatelessWidget {
  final Size size;
  final Product product;

  const ColorSection({
    super.key,
    required this.size,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: size.height * 0.3,
        right: 4,
        left: 10,
      ),
      padding: EdgeInsets.only(top: size.height * 0.12),
      height: 800,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 244, 247, 250),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 55),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text("Colors"),
                  
                      Row(
                        children: const [
                          ColorDot(
                            color: Color.fromARGB(255, 160, 223, 160),
                            isSelected: true,
                          ),
                          ColorDot(color: Colors.black),
                          ColorDot(color: Colors.brown),
                        ],
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      children: [
                        const TextSpan(text: "Size\n"),
                        // SizedBox(height: 5,),
                        TextSpan(
                          // text: "${product.size} cm",
                          
                          text: "12 Cm",
                          style: Theme.of(context)
                          .textTheme
                          .headlineSmall,
                          
                          // .copyWith(fontWeight: FontWeight(bold),)
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? const Color(0XFF356C95) : Colors.transparent,
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