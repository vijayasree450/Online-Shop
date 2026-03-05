import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Leather Handbag",
    price: 2310,
    description: "Texture of material",
    image: "assets/1.jpg",
    size: 12,
    color: Colors.black,
  ),
];