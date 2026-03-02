import 'package:flutter/material.dart';

import '../data_model.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    var product = Product(
      id: 0,
      name: "Espresso",
      price: 1.99,
      image: "espresso.png",
    );
    return ListView(
      children: [
        ProductItem(product: product),
        ProductItem(product: product),
        ProductItem(product: product),
        ProductItem(product: product),
        ProductItem(product: product),
        ProductItem(product: product),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),

      child: Card(
        elevation: 8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "images/black_coffee.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),

                      Text("\$${product.price}"),
                    ],
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("Add")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
