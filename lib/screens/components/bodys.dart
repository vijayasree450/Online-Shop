

import 'package:flutter/material.dart';
import 'package:bagshop/models/product.dart';
import 'package:bagshop/screens/components/productTitleWith.dart';
import 'package:bagshop/screens/components/color_and_size.dart';
import 'package:bagshop/screens/components/description.dart';

class Body extends StatelessWidget {
final Product product;

const Body({super.key, required this.product});

@override
Widget build(BuildContext context) {
Size size = MediaQuery.of(context).size;

return SingleChildScrollView(
  child: SizedBox(
    height: size.height,
    child: Stack(
      children: <Widget>[
        Container(
          height: size.height,
          color: Colors.white,
        ),

        Container(
          margin: EdgeInsets.only(top: size.height * 0.3),
          padding: EdgeInsets.only(
            top: size.height * 0.12,
            left: 20,
            right: 20,
          ),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 244, 247, 250),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColorAndSize(product: product),
              const SizedBox(height: 20),
              Description(product: product),
              const SizedBox(height: 20),
              const CartCounter(),
              const SizedBox(height: 20),
              AddToCart(product: product),
            ],
          ),
        ),

        ProductTitleWith(product: product),
      ],
    ),
  ),
);
}
}

class CartCounter extends StatefulWidget {
const CartCounter({super.key});

@override
State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {

int numOfItems = 1;
bool isFavourite = false;

@override
Widget build(BuildContext context) {
return Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [


    Row(
      children: [

        SizedBox(
          width: 40,
          height: 32,
          child: OutlinedButton(
            onPressed: () {
              setState(() {
                if (numOfItems > 1) {
                  numOfItems--;
                }
              });
            },
            child: const Icon(Icons.remove),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),

        SizedBox(
          width: 40,
          height: 32,
          child: OutlinedButton(
            onPressed: () {
              setState(() {
                numOfItems++;
              });
            },
            child: const Icon(Icons.add),
          ),
        ),
      ],
    ),

    GestureDetector(
      onTap: () {
        setState(() {
          isFavourite = !isFavourite;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          color: isFavourite ? Colors.red : Colors.red,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Icon(
          Icons.favorite,
          color: Colors.white,
          size: 18,
        ),
      ),
    ),
  ],
);

}
}

class AddToCart extends StatelessWidget {
final Product product;

const AddToCart({super.key, required this.product});

@override
Widget build(BuildContext context) {
return Row(
children: [
SizedBox(height: 150,),
    Container(
      margin: const EdgeInsets.only(right: 20),
      height: 50,
      width: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: product.color),
      ),
      child: IconButton(
        icon: const Icon(Icons.shopping_cart),
        color: Colors.black,
        onPressed: () {},
      ),
    ),

    Expanded(
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: product.color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          onPressed: () {},
          child: const Text(
            "BUY NOW",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    ),
  ],
);

}
}
