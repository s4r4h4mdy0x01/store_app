import 'package:flutter/material.dart';
import 'package:stroe_app/models/product_model.dart';
import 'package:stroe_app/pages/update_products.dart';

class Costomcard extends StatelessWidget {
  Costomcard({required this.product});
  ProductsModel product;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey.withOpacity(0.1),
                offset: Offset(1, 1),
              )
            ],
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, UpdateProductPage.id, arguments: product);
            },
            child: Card(
              elevation: 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.title.substring(0, 9),
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 18)),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(r'$' '${product.price}',
                            style: const TextStyle(
                              color: Colors.grey,
                            )),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: -60,
            right: 32,
            child: Image.network(
              product.image,
              height: 90,
              width: 90,
            )),
      ],
    );
  }
}
