import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
    final List<Map<String, String>> products;

    Products(this.products);

    @override
    Widget build(BuildContext context) => _buildProductList();

    Widget _buildProductItem(BuildContext context, int index) {
        return Card(
            child: Column(
                children: <Widget>[
                    Image.asset(products[index]['image']),
                    Text(products[index]['title']),
                    ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                            FlatButton(
                                child: Text('Details'),
                                onPressed: () => _navigateTo(context: context, page: ProductPage(
                                    products[index]['title'], products[index]['image'],
                                ),),
                            ),
                        ],
                    )
                ],
            ),
        );
    }

    Widget _buildProductList() {
        Widget productCard = Center(child: Text('No Products found!'));

        if (products.length > 0) {
            productCard = ListView.builder(
                itemBuilder: _buildProductItem,
                itemCount: products.length,
            );
        }

        return productCard;
    }

    void _navigateTo({final BuildContext context, final Widget page}) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => page,
            ),
        );
    }
}
