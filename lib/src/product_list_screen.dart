import 'package:flutter/material.dart';
import '../cart_screen.dart';

class ProductListScreen extends StatefulWidget {
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Al Rabie Orange Juice',
      'price': 5,
      'quantity': 125,
      'unit': 'ml',
      'image': 'assets/images/flutter_logo.png',
    },
    {
      'name': 'Al Rabie Orange Juice',
      'price': 5,
      'quantity': 125,
      'unit': 'ml',
      'image': 'assets/images/flutter_logo.png',
    },
    {
      'name': 'Al Rabie Orange Juice',
      'price': 5,
      'quantity': 125,
      'unit': 'ml',
      'image': 'assets/images/flutter_logo.png',
    },
    {
      'name': 'Al Rabie Orange Juice',
      'price': 5,
      'quantity': 125,
      'unit': 'ml',
      'image': 'assets/images/flutter_logo.png',
    },
    {
      'name': 'Al Rabie Orange Juice',
      'price': 5,
      'quantity': 125,
      'unit': 'ml',
      'image': 'assets/images/flutter_logo.png',
    },
    {
      'name': 'Al Rabie Orange Juice',
      'price': 5,
      'quantity': 125,
      'unit': 'ml',
      'image': 'assets/images/flutter_logo.png',
    },
    // {'name': 'Goody Light Meat Tuna', 'price': 9, 'quantity': 185, 'unit': 'g'},
    // {'name': 'Goody Light Meat Tuna', 'price': 9, 'quantity': 185, 'unit': 'g'},
    // {'name': 'Goody Light Meat Tuna', 'price': 9, 'quantity': 185, 'unit': 'g'},
    // {'name': 'Goody Light Meat Tuna', 'price': 9, 'quantity': 185, 'unit': 'g'},
    // {'name': 'Goody Light Meat Tuna', 'price': 9, 'quantity': 185, 'unit': 'g'},
    // {'name': 'Goody Light Meat Tuna', 'price': 9, 'quantity': 185, 'unit': 'g'},
    // {'name': 'Goody Light Meat Tuna', 'price': 9, 'quantity': 185, 'unit': 'g'},
    // {'name': 'Goody Light Meat Tuna', 'price': 9, 'quantity': 185, 'unit': 'g'},
    // {'name': 'Goody Light Meat Tuna', 'price': 9, 'quantity': 185, 'unit': 'g'},
    // {'name': 'Goody Light Meat Tuna', 'price': 9, 'quantity': 185, 'unit': 'g'},
    // {'name': 'Goody Light Meat Tuna', 'price': 9, 'quantity': 185, 'unit': 'g'},
    // {'name': 'Goody Light Meat Tuna', 'price': 9, 'quantity': 185, 'unit': 'g'},
    // {'name': 'Goody Light Meat Tuna', 'price': 9, 'quantity': 185, 'unit': 'g'},
  ];

  final List<Map<String, dynamic>> cart = [];

  void addToCart(Map<String, dynamic> product) {
    setState(() {
      cart.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen(cart: cart)),
              );
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  product['image'],
                  scale: 1.5,
                ),
                Text('${product['name']}'),
                // Text('${product['quantity']} ${product['unit']}'),
                Text('${product['price']} SR'),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => addToCart(product),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
