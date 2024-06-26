import 'package:e_commerce_app/main_layout/categories_screen.dart';
import 'package:e_commerce_app/main_layout/home_screen.dart';
import 'package:e_commerce_app/main_layout/profile_screen.dart';
import 'package:e_commerce_app/main_layout/search_screen.dart';
import 'package:e_commerce_app/main_layout/wishlist_screen.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget 
{
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => MainLayoutState();
}

class MainLayoutState extends State<MainLayout> 
{
  static int currentBarIndex = 0;

  void onItemTapped(int index)
  {
    setState(() 
    {
      currentBarIndex = index;
    });
  }

  List pages = 
  [
    const HomeScreen(),
    const CategoriesScreen(),
    const SearchScreen(),
    const WishlistScreen(),
    const ProfileScreen()
  ];
 
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      bottomNavigationBar: BottomNavigationBar
      (
        items: const <BottomNavigationBarItem>
        [
          BottomNavigationBarItem(icon: Icon(Icons.store_mall_directory_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.category_outlined), label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_rounded), label: "Wishlist"),
          BottomNavigationBarItem(icon: Icon(Icons.person_4_outlined), label: "Profile"),
        ],

        currentIndex: currentBarIndex,
        onTap: onItemTapped,

        backgroundColor: Colors.white,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
      ),

      body: Center
      (
        child: pages.elementAt(currentBarIndex),
      ),
    );
  }
}