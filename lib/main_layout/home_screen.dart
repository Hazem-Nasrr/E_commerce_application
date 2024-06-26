import 'package:dio/dio.dart';
import 'package:e_commerce_app/components/product_model.dart';
import 'package:e_commerce_app/components/products_display.dart';
import 'package:e_commerce_app/components/special_for_you.dart';
import 'package:e_commerce_app/main_layout/main_layout.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget
{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{
  List specialCategories = 
  [
    const SpecialForYou(image: "assets/images/laptops.jpeg", name: "Computers"),
    const SpecialForYou(image: "assets/images/mobile_phones.jpg", name: "Smart Phones"),
    const SpecialForYou(image: "assets/images/tech_accessories.jpeg", name: "Accessories"),
    const SpecialForYou(image: "assets/images/cameras.jpeg", name: "Cameras"),
    const SpecialForYou(image: "assets/images/printers.jpeg", name: "Printers"),
  ];

  List<ProductModel> featuredProducts = [];

  _getProductData() async
  {
    Dio dio = Dio();
    var response = await dio.get("https://fakestoreapi.com/products");
    var data = response.data as List;

    if (response.statusCode == 200)
    {
      for (var element in data)
      {
        featuredProducts.add(ProductModel.fromJson(element));
      }
    }

    setState(() {});
  }

  @override
  void initState()
  {
    _getProductData();
    super.initState();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      backgroundColor: Colors.white,

      body: SingleChildScrollView
      (
        child: Center
        (
          child: Column
          (
            children: 
            [
              SizedBox
              (
                width: MediaQuery.sizeOf(context).width - 30,
                child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                  [
                    Container
                    (
                      height: 50,
                      width: MediaQuery.sizeOf(context).width - 160,
                      margin: const EdgeInsets.only(top: 50, bottom: 25),
                      padding: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration
                      (
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
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
        
                    Container
                    (
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.only(top: 25),
                      decoration: BoxDecoration
                      (
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25 ),
                        boxShadow: const [BoxShadow(color: Colors.grey, offset: Offset(0, 4,), blurRadius: 4)],
                      ),
                      child: IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined, color: Colors.purple,)),
                    ),
                
                    Container
                    (
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.only(top: 25),
                      decoration: BoxDecoration
                      (
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25 ),
                        boxShadow: const [BoxShadow(color: Colors.grey, offset: Offset(0, 4,), blurRadius: 4)],
                      ),
                      child: IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none, color: Colors.purple,)),
                    )
                  ],
                ),
              ),
        
              SizedBox
              (
                width: MediaQuery.sizeOf(context).width - 30,
                child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                  [
                    const Text("Special for you", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                    TextButton(onPressed: () 
                    {
                      setState(() {MainLayoutState.currentBarIndex = 2;});
                    }, child: const Text("See More", style: TextStyle(color: Colors.grey, fontSize: 16)))
                  ],
                ),
              ),
        
              Row
              (
                children: 
                [
                  Expanded
                  (
                    child: SizedBox
                    (
                      height: 140,
                      width: MediaQuery.sizeOf(context).width,
                      child: ListView.builder
                      (
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: specialCategories.length,
                        itemBuilder: (context, index)
                        {
                          return specialCategories[index];
                        },
                      )
                    ),
                  )
                ],
              ),
              
              const SizedBox(height: 15),
        
              SizedBox
              (
                width: MediaQuery.sizeOf(context).width - 30,
                child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                  [
                    const Text("Featured Products", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                    TextButton(onPressed: () 
                    {
                      setState(() {MainLayoutState.currentBarIndex = 2;});
                    }, child: const Text("See More", style: TextStyle(color: Colors.grey, fontSize: 16)))
                  ],
                ),
              ),

              Row
              (
                children: 
                [
                  Expanded
                  (
                    child: SizedBox
                    (
                      height: 202,
                      width: MediaQuery.sizeOf(context).width,
                      child: ListView.builder
                      (
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: featuredProducts.length,
                        itemBuilder: (context, index)
                        {
                          return ProductDisplay.initializing(featuredProducts[index]);
                        },
                      )
                    ),
                  )
                ],
              ),
        
              SizedBox
              (
                width: MediaQuery.sizeOf(context).width - 30,
                child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                  [
                    const Text("Best Selling Products", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                    TextButton(onPressed: () 
                    {
                      setState(() {MainLayoutState.currentBarIndex = 2;});
                    }, child: const Text("See More", style: TextStyle(color: Colors.grey, fontSize: 16)))
                  ],
                ),
              ),

              Row
              (
                children: 
                [
                  Expanded
                  (
                    child: SizedBox
                    (
                      height: 202,
                      width: MediaQuery.sizeOf(context).width,
                      child: ListView.builder
                      (
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: featuredProducts.length,
                        itemBuilder: (context, index)
                        {
                          return ProductDisplay.initializing(featuredProducts[index]);
                        },
                      )
                    ),
                  )
                ],
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}