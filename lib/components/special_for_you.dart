import 'package:flutter/material.dart';

class SpecialForYou extends StatelessWidget 
{
  const SpecialForYou({super.key, required this.image, required this.name});

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) 
  {
    return Stack
    (
      children: 
      [
        Container
        (
          margin: const EdgeInsets.only(right: 15, left: 10, bottom: 5),
          decoration: BoxDecoration
          (
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [BoxShadow(color: Colors.grey, offset: Offset(0, 4), blurRadius: 4)]
          ),
          child: ClipRRect
          (
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(image, fit: BoxFit.cover),
          ),
        ),
        
        Container
        (
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Text(name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),)
        ),
      ],
    );
  }
}