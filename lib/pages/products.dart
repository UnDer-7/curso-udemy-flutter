import 'package:flutter/material.dart';

import '../widgets/products/products.dart';

class ProductsPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) => Scaffold(
        drawer: _buildSideDrawer(context),
        appBar: AppBar(
            title: Text('EasyList'),
            actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.favorite),
                    onPressed: () {},
                ),
            ],
        ),
        body: Products(),
    );

    Drawer _buildSideDrawer(BuildContext context) =>
        Drawer(
            child: Column(
                children: <Widget>[
                    AppBar(
                        automaticallyImplyLeading: false,
                        title: Text('Choose'),
                    ),
                    ListTile(
                        leading: Icon(Icons.edit),
                        title: Text('Manage Products'),
                        onTap: () {
                            Navigator.pushReplacementNamed(context, '/admin');
                        },
                    ),
                ],
            ),
        );
}
