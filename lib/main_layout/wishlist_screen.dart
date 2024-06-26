import 'package:flutter/material.dart';

class WishlistScreen extends StatefulWidget
{
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => WishlistScreenState();
}

class WishlistScreenState extends State<WishlistScreen> 
{
  static List favoriteItems = [];

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      backgroundColor: Colors.white,

      appBar: AppBar
      (
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Wish List", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
      ),

      body: SingleChildScrollView
      (
        child: Center
        (
          child: Column
          (
            children: 
            [
              Container
              (
                height: 50,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 25),
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration
                (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25 ),
                  boxShadow: const [BoxShadow(color: Colors.grey, offset: Offset(0, 4,), blurRadius: 4)],
                ),
                child: TextFormField
                (
                  decoration: const InputDecoration
                  (
                    border: InputBorder.none,
                    hintText: "Search Product",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 121, 119, 119)),
                    prefixIcon: Icon(Icons.search, color: Colors.purple,)
                  ),
                ),
              ),
        
              ListView.builder
              (
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: favoriteItems.length,
                itemBuilder: (context, index) 
                {
                  return favoriteItems[index];
                },
              )
              
            ],
          ),
        ),
      ),
    );
  }
}