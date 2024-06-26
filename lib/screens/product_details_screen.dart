import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget
{
  const ProductDetailsScreen({super.key, required this.productImage, required this.productDescription, required this.productName, required this.productPrice});

  final String productImage;
  final String productPrice;
  final String productName;
  final String productDescription;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen>
{
  Color favoriteColor = Colors.grey;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      backgroundColor: Colors.white,
      body: SizedBox
      (
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,

        child: Center
        (
          child: Stack
          (
            children: 
            [
              Container
              (
                height: 325,
                color: Colors.grey[50],
                child: Image.asset(widget.productImage, fit: BoxFit.cover,)
              ),

              Container
              (
                margin: const EdgeInsets.only(top: 300),
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                height: 410,
                decoration: const BoxDecoration
                (
                  color: Colors.white, 
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
                  boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(0, -10), blurRadius: 9)],
                ),

                child: SingleChildScrollView
                (
                  child: Column
                  (
                    children: 
                    [
                      Row
                      (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                        [ 
                          Text("\$${widget.productPrice}", style: const TextStyle(letterSpacing: 1, fontSize: 30, color: Colors.purple, fontWeight: FontWeight.bold)),
                          IconButton(onPressed: () 
                          {
                            setState(() 
                            {
                            if (favoriteColor == Colors.grey)
                            {
                              favoriteColor = Colors.red;
                            }
                            else
                            {
                              favoriteColor = Colors.grey;
                            }
                            });
                          }, icon: Icon(Icons.favorite, color: favoriteColor)),
                        ]
                      ),

                      const SizedBox(height: 20),
                      SizedBox(width: MediaQuery.sizeOf(context).width, child: Text(widget.productName, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
                      const SizedBox(height: 20),
                      SizedBox(width: MediaQuery.sizeOf(context).width, child: const Text("Description", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
                      const SizedBox(height: 10),
                      SizedBox(width: MediaQuery.sizeOf(context).width, child: Text(widget.productDescription, style: const TextStyle(color: Colors.grey, fontSize: 15))),
                      const SizedBox(height: 20),
                      SizedBox(width: MediaQuery.sizeOf(context).width, child: const Text("Color", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
                        
                      Row
                      (
                        children: 
                        [
                          Container
                          (
                            height: 50,
                            width: 50,
                            margin: const EdgeInsets.only(left: 20),
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration
                            (
                              color: const Color.fromARGB(255, 225, 39, 26),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(width: 1)
                            ),
                          ),

                          Container
                          (
                            height: 50,
                            width: 50,
                            margin: const EdgeInsets.only(left: 20),
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration
                            (
                              color: Colors.grey[700],
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(width: 1)
                            ),
                          ),

                          Container
                          (
                            height: 50,
                            width: 50,
                            margin: const EdgeInsets.only(left: 20),
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration
                            (
                              color: const Color.fromARGB(255, 33, 51, 243),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(width: 1)
                            ),
                          ),
                        ],
                      )

                    ],
                  ),
                ),
              ),
          
              Container
              (
                margin: const EdgeInsets.only(bottom: 10),
                alignment: Alignment.bottomCenter,
                child: MaterialButton
                (
                  onPressed: () {},
                  color: Colors.purple,
                  minWidth: MediaQuery.sizeOf(context).width - 60,
                  height: 50,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  child: const Text("Add to Cart", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),

              Container
              (
                height: 50,
                width: 50,
                margin: const EdgeInsets.only(top: 30, left: 20),
                alignment: Alignment.topLeft,
                decoration: BoxDecoration
                (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25 ),
                  boxShadow: const [BoxShadow(color: Colors.grey, offset: Offset(6, 6), blurRadius: 8)],
                ),
                child: IconButton(onPressed: () 
                {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_rounded, color: Colors.purple,)),
              ),


            ],
          ),
        ),
      )
    );
  }
}