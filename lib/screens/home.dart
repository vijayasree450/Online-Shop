import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
             icon:const Icon(Icons.search, color: Colors.black),
             onPressed: (){},
             
             ),
               IconButton(
             icon:const Icon(Icons.shopping_cart, color: Colors.black),
             onPressed: (){},
             
             ),
        ],
         
        
        
      ),
    );
  }
}