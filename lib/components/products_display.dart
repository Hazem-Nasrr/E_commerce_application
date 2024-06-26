import 'package:e_commerce_app/components/product_model.dart';
import 'package:e_commerce_app/components/wish_list_items.dart';
import 'package:e_commerce_app/main_layout/wishlist_screen.dart';
import 'package:e_commerce_app/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

class ProductDisplay extends StatefulWidget 
{
  String image = "";
  String name = "";
  String price = "0";
  String description = "";

  ProductDisplay({super.key});

  ProductDisplay.initializing(ProductModel x)
  {
    image = x.image!;
    name = x.name!;
    price = x.price!;
    description = x.description!;
  }

  @override
  State<ProductDisplay> createState() => _ProductDisplayState();
}

class _ProductDisplayState extends State<ProductDisplay> 
{
  Color favoriteColor = Colors.grey;

  void changeFavoriteColor()
  {
    setState(() 
    {
      if (favoriteColor == Colors.grey)
      {
        favoriteColor = Colors.red;
        WishlistScreenState.favoriteItems.add(WishListItems(productImage: widget.image, productName: widget.name, productPrice: widget.price));
      }
      else
      {
        favoriteColor = Colors.grey;
        WishlistScreenState.favoriteItems.remove(WishListItems(productImage: widget.image, productName: widget.name, productPrice: widget.price));
      }
    });
  }

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      margin: const EdgeInsets.only(right: 10, left: 15),
      height: 200,
      child: Column
      (
        children: 
        [
          Stack
          (
            children: 
            [
              GestureDetector
              (
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailsScreen(productImage: widget.image, productDescription: widget.description, productName: widget.name, productPrice: widget.price),));},
                child: Container
                (
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration
                  (
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [BoxShadow(color: Colors.grey, offset: Offset(0, 4), blurRadius: 4)],
                  ),
                  child: ClipRRect
                  (
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(widget.image, fit: BoxFit.cover),
                  ),
                ),
              ),

              Container
              (
                height: 40,
                width: 40,
                margin: const EdgeInsets.only(left: 90, top: 90),
                decoration: const BoxDecoration
                (
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                  color: Colors.white,
                ),
                child: IconButton
                (
                  onPressed: () 
                  {
                    changeFavoriteColor();
                  }, icon: Center(child: Icon(Icons.favorite, color: favoriteColor,))
                ),
              )
            ],
          ),
          const SizedBox(height: 7),
          SizedBox(width: 130, child: Text(widget.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
          SizedBox(width: 130, child: Text("\$${widget.price.toString()}", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.purple)))
        ],
      ),
    );
  }
}