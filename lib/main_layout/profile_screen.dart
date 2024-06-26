import 'package:e_commerce_app/components/profile_list_tile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget 
{
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> 
{

  List listTileItems = 
  [
    const ProfileListTile(listTileTitle: "My Account", listTileLeading: Icon(Icons.person)),
    const ProfileListTile(listTileTitle: "My Orders", listTileLeading: Icon(Icons.shopping_bag_outlined)),
    const ProfileListTile(listTileTitle: "Language Settings", listTileLeading: Icon(Icons.translate_rounded)),
    const ProfileListTile(listTileTitle: "Shipping Address", listTileLeading: Icon(Icons.location_on_outlined)),
    const ProfileListTile(listTileTitle: "My Cards", listTileLeading: Icon(Icons.credit_card_rounded)),
    const ProfileListTile(listTileTitle: "Settings", listTileLeading: Icon(Icons.settings_outlined)),
    const ProfileListTile(listTileTitle: "Privacy Policy", listTileLeading: Icon(Icons.article_outlined)),
    const ProfileListTile(listTileTitle: "FAQ", listTileLeading: Icon(Icons.help_outline_rounded)),
  ];

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      backgroundColor: Colors.white,

      body: SingleChildScrollView
      (
        child: Container
        (
          padding: const EdgeInsets.only(right: 20, left: 20, top: 50),
          child: Column
          (
            crossAxisAlignment: CrossAxisAlignment.center,
            children: 
            [
              const CircleAvatar
              (
                radius: 70,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, size: 80, color: Colors.black,),
              ),
                
              SizedBox(height: 15, width: MediaQuery.sizeOf(context).width),
                
              const Text("Hazem Nasr", style: TextStyle(fontSize: 30,)),
          
              ListView.builder
              (
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: listTileItems.length,
                itemBuilder: (context, index) 
                {
                  return listTileItems[index];
                },
              )
            ],
          ),
        ),
      )
    );
  }
}