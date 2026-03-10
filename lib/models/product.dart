import 'package:flutter/material.dart';

class Product {
  final String image;
  final String title;
  final int price;
  final Color color;
  final String description;
  final int size;

  Product({
    required this.image,
    required this.title,
    required this.price,
    required this.color,
    required this.description,
    required this.size,
  });
}

List<Product> products = [
  Product(
    image: "assets/1.jpg",
    title: "Office Bag",
    price: 234,
    color: const Color.fromARGB(255, 223, 217, 217),
    description: "A stylish office bag for daily work.",
    size: 12,
  ),
  Product(
    image: "assets/8.jpg",
    title: "Back Bag",
    price: 120,
    color: const Color.fromARGB(255, 242, 238, 238),
    description: "Comfortable backpack for travel and school.",
    size: 10,
  ),
  Product(
    image: "assets/7.jpg",
    title: "Side Bag",
    price: 180,
    color: const Color.fromARGB(255, 242, 238, 238),
    description: "Small side bag for casual use.",
    size: 8,
  ),
  Product(
    image: "assets/4.jpg",
    title: "Old Fashion",
    price: 150,
    color: const Color.fromARGB(255, 242, 238, 238),
    description: "Classic vintage style bag.",
    size: 11,
  ),
  Product(
    image: "assets/5.jpg",
    title: "Office Code",
    price: 200,
    color: const Color.fromARGB(255, 242, 238, 238),
    description: "Professional office bag design.",
    size: 13,
  ),
  Product(
    image: "assets/6.jpg",
    title: "Leather Bag",
    price: 320,
    color: const Color.fromARGB(255, 242, 238, 238),
    description: "Premium leather bag for luxury style.",
    size: 14,
  ),
];