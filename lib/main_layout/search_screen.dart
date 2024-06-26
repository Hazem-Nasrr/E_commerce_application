import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget 
{
  const SearchScreen({super.key});

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
        title: const Text("Search", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
      ),

      body: Center
      (
        child: Column
        (
          children: 
          [
            const SizedBox(height: 15),
            SizedBox
            (
              width: MediaQuery.sizeOf(context).width - 40,
              child: Row
              (
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: 
                [
                  Container
                  (
                    height: 50,
                    width: MediaQuery.sizeOf(context).width - 110,
                    margin: const EdgeInsets.only(bottom: 25),
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
                        hintText: "Search Here...",
                        hintStyle: TextStyle(color: Color.fromARGB(255, 121, 119, 119)),
                        prefixIcon: Icon(Icons.search, color: Colors.purple,)
                      ),
                    ),
                  ),

                  Container
                  (
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration
                    (
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [BoxShadow(color: Colors.grey, offset: Offset(0, 4,), blurRadius: 4)],
                    ),
                    child: IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list_rounded, color: Colors.purple,)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}