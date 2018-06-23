import 'package:flutter/material.dart';
import 'package:flutter_uikit/model/product.dart';
import 'package:flutter_uikit/ui/page/shopping/shopping_action.dart';
import 'package:flutter_uikit/ui/widgets/profile_tile.dart';

class ShoppingWidgets extends StatelessWidget {
  Size deviceSize;
  final Product product;

  ShoppingWidgets({Key key, this.product}) : super(key: key);
  Widget mainCard() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  product.name,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(product.brand),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.cyan,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          product.rating.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    Text(
                      product.price,
                      style: TextStyle(
                          color: Colors.orange.shade800,
                          fontWeight: FontWeight.w700,
                          fontSize: 25.0),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );

  Widget imagesCard() => SizedBox(
        height: deviceSize.height / 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Card(
            elevation: 2.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, i) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(product.image),
                  ),
            ),
          ),
        ),
      );

  Widget descCard() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProfileTile(
              title: "Description",
              subtitle: product.description,
            ),
          ),
        ),
      );

  Widget actionCard() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Card(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ShoppingAction(product: product)),
        ),
      );
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: deviceSize.height / 4,
          ),
          mainCard(),
          imagesCard(),
          descCard(),
          actionCard(),
        ],
      ),
    );
  }
}
