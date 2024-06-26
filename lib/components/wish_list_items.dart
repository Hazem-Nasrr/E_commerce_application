import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WishListItems extends StatelessWidget
{
  const WishListItems({super.key, required this.productImage, required this.productName, required this.productPrice });

  final String productImage;
  final String productName;
  final String productPrice;

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
      height: 100,
      decoration: BoxDecoration
      (
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(color: Colors.grey, offset: Offset(2, 4), blurRadius: 4)],           
      ),
      child: Center
      (
        child: Row
        (
          children:
          [
            Expanded
            (
              flex: 2,
              child: SizedBox
              (
                height: 100,
                child: ClipRRect
                (
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                  child: Image.asset(productImage, fit: BoxFit.cover)
                ),
              ),
            ),
            Expanded
            (
              flex: 4,
              child: ListTile
              (
                contentPadding: const EdgeInsets.only(left: 10,right: 10),
                onTap: () {},
                title: Text(productName),
                subtitle: Text("\$${productPrice.toString()}"),
                trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.add_shopping_cart_rounded), color: Colors.purple,)
              ),
            ),
          ]
        ),
      ),
    );
  }
}