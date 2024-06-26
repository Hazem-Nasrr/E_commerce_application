import 'package:e_commerce_app/components/special_for_you.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget
{
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>
{
  List categoriesss = 
  [
    const SpecialForYou(image: "assets/images/laptops.jpeg", name: "Computers"),
    const SpecialForYou(image: "assets/images/mobile_phones.jpg", name: "Smart Phones"),
    const SpecialForYou(image: "assets/images/tech_accessories.jpeg", name: "Accessories"),
    const SpecialForYou(image: "assets/images/cameras.jpeg", name: "Cameras"),
    const SpecialForYou(image: "assets/images/printers.jpeg", name: "Printers"),
  ];

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
        title: const Text("Categories", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
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
                    hintText: "Search Category",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 121, 119, 119)),
                    prefixIcon: Icon(Icons.search, color: Colors.purple,)
                  ),
                ),
              ),
        
              GridView.builder
              (
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: categoriesss.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.5),
                itemBuilder: (context, index)
                {
                  return categoriesss[index];
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}