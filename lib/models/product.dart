import 'package:flutter/material.dart';

class Product {
  final String image;
  final String title;
  final int price;
  final Color color;

  Product({
    required this.image,
    required this.title,
    required this.price,
    required this.color,
  });
}

List<Product> products = [
  Product(
    image: "assets/1.jpg",
    title: "Office Bag",
    price: 234,
    color: const Color.fromARGB(0, 242, 238, 238),
  ),
  Product(
    image: "assets/2.jpg",
    title: "Belt Bag",
    price: 120,
    color: const Color.fromARGB(0, 242, 238, 238),
  ),
  Product(
    image: "assets/3.jpg",
    title: "Hang Top",
    price: 180,
    color: const Color.fromARGB(0, 242, 238, 238),
  ),
  Product(
    image: "assets/4.jpg",
    title: "Old Fashion",
    price: 150,
    color:const Color.fromARGB(0, 242, 238, 238),
  ),
  Product(
    image: "assets/5.jpg",
    title: "Office Code",
    price: 200,
    color: const Color.fromARGB(0, 242, 238, 238),
  ),
  Product(
    image: "assets/6.jpg",
    title: "Leather Bag",
    price: 320,
    color:const Color.fromARGB(0, 242, 238, 238),
  ),
];