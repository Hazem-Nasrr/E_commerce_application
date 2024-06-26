import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget
{
  const ProfileListTile({super.key, required this.listTileTitle, required this.listTileLeading });

  final Icon listTileLeading;
  final String listTileTitle;

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: const EdgeInsets.only(bottom: 10, left: 3, right: 3),
      decoration: BoxDecoration
      (
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [BoxShadow(color: Colors.grey, offset: Offset(2, 4), blurRadius: 4)],           
      ),
      child: ListTile
      (
        onTap: () {},
        title: Text(listTileTitle),
        leading: listTileLeading,
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}