import 'package:e_commerce_app/registration_screens/sing_up_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget
{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> 
{
  bool? checkBoxDefualt = false;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      backgroundColor: Colors.white,

      appBar: AppBar
      (
        backgroundColor: Colors.white,
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
                width: MediaQuery.sizeOf(context).width, 
                margin: const EdgeInsets.only(left: 30),
                child: const Text("Welcome back!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35))
              ),

              Container
              (
                width: MediaQuery.sizeOf(context).width, 
                margin: const EdgeInsets.only(left: 30),
                child: const Text("Login to your existing account", style: TextStyle(fontSize: 17),)
              ),

              Container
              (
                height: 150,
                width: 200,
                decoration: const BoxDecoration
                (
                  image: DecorationImage(image: AssetImage("assets/images/app_logo.png"), fit: BoxFit.contain,)
                ),
              ),

              Container
              (
                margin: const EdgeInsets.only(left: 30),
                width: MediaQuery.sizeOf(context).width,
                child: const Text("Email Address", style: TextStyle(color: Color.fromARGB(255, 121, 119, 119),),)
              ),
        
              Container
              (
                height: 50,
                margin: const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 25),
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration
                (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [BoxShadow(color: Colors.grey, offset: Offset(0, 4,), blurRadius: 4)],
                ),
                child: TextFormField
                (
                  decoration: const InputDecoration
                  (
                    border: InputBorder.none,
                    hintText: "e.g name@example.com",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 121, 119, 119))
                  ),
                ),
              ),
        
              Container
              (
                margin: const EdgeInsets.only(left: 30),
                width: MediaQuery.sizeOf(context).width,
                child: const Text("Password", style: TextStyle(color: Color.fromARGB(255, 121, 119, 119),),)
              ),
        
              Container
              (
                height: 50,
                margin: const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 20),
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration
                (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [BoxShadow(color: Colors.grey, offset: Offset(0, 4,), blurRadius: 4)],
                ),
                child: TextFormField
                (
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: const InputDecoration
                  (
                    border: InputBorder.none,
                    hintText: "e.g **************",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 121, 119, 119))
                  ),
                ),
              ),
        
              Container
              (
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: 
                  [
                    Row
                    (
                      children: 
                      [
                        Checkbox(value: checkBoxDefualt, onChanged: (value)
                        {
                          setState(() 
                          {
                            checkBoxDefualt = value;
                          });
                        }),
        
                        const Text("Remember Me", style: TextStyle(color: Color.fromARGB(255, 121, 119, 119)),),
                      ],
                    ),
                
                    TextButton(onPressed: () {}, child: const Text("Forgot Password", style: TextStyle(color: Color.fromARGB(255, 121, 119, 119),)))
                  ],
                ),
              ),

              MaterialButton
              (
                onPressed: () {},
                color: Colors.purple,
                minWidth: MediaQuery.sizeOf(context).width - 60,
                height: 50,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                child: const Text("Login", style: TextStyle(color: Colors.white, fontSize: 20),),
              ),

              const SizedBox(height: 20,),
        
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  IconButton(onPressed: () {}, icon: SizedBox(height: 45, child: Image.asset("assets/images/google_logo.jpg"))),
                  const SizedBox(width: 20,),
                  IconButton(onPressed: () {}, icon: SizedBox(height: 45, child: Image.asset("assets/images/facebook_logo.jpeg")))
                ],
              ),
        
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  const Text("Don't have an account?", style: TextStyle(color: Color.fromARGB(255, 121, 119, 119), fontSize: 18),),
                  TextButton(onPressed: ()
                  {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignUpPage(),));
                  }, child: const Text("Sign Up", style: TextStyle(fontSize: 18, color: Colors.purple),))
                ],
              )
        
        
            ],
          ),
        ),
      ),
    );
  }
}