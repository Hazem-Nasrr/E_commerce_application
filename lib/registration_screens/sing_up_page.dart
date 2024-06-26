import 'package:e_commerce_app/registration_screens/login_page.dart';
import 'package:e_commerce_app/registration_screens/verification_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget 
{
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>
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
        leading: IconButton(onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage(),));}, icon: const SizedBox(child: Icon(Icons.arrow_back_rounded),)),
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
                margin: const EdgeInsets.only(left: 30, bottom: 10),
                width: MediaQuery.sizeOf(context).width,
                child: const Text("Sign up", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))
              ),

              Container
              (
                margin: const EdgeInsets.only(left: 30),
                width: MediaQuery.sizeOf(context).width,
                child: const Text("Please enter your information below to sign up", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),)
              ),

              Container
              (
                height: 150,
                width: 200,
                decoration: const BoxDecoration
                (
                  image: DecorationImage(image: AssetImage("assets/images/app_logo.png"), fit: BoxFit.contain)
                ),
              ),

              Container
              (
                margin: const EdgeInsets.only(left: 30),
                width: MediaQuery.sizeOf(context).width,
                child: const Text("Name", style: TextStyle(color: Color.fromARGB(255, 121, 119, 119), fontSize: 17),)
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
                    hintText: "Please enter your name",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 121, 119, 119))
                  ),
                ),
              ),

              Container
              (
                margin: const EdgeInsets.only(left: 30),
                width: MediaQuery.sizeOf(context).width,
                child: const Text("Email", style: TextStyle(color: Color.fromARGB(255, 121, 119, 119), fontSize: 17),)
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
                    hintText: "Please enter your email",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 121, 119, 119))
                  ),
                ),
              ),
        
              Container
              (
                margin: const EdgeInsets.only(left: 30),
                width: MediaQuery.sizeOf(context).width,
                child: const Text("Password", style: TextStyle(color: Color.fromARGB(255, 121, 119, 119), fontSize: 17),)
              ),
        
              Container
              (
                height: 50,
                margin: const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 50),
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
                    hintText: "Please enter your password",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 121, 119, 119))
                  ),
                ),
              ),

              MaterialButton
              (
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const VerificationPage(),));},
                color: Colors.purple,
                minWidth: MediaQuery.sizeOf(context).width - 60,
                height: 50,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                child: const Text("Sign up", style: TextStyle(color: Colors.white, fontSize: 20),),
              ),

              const SizedBox(height: 10), 

              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  const Text("Already have an account?", style: TextStyle(color: Color.fromARGB(255, 121, 119, 119), fontSize: 18),),
                  TextButton(onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage(),));}, child: const Text("Sign in", style: TextStyle(fontSize: 18, color: Colors.purple),),)
                ],
              )
        
        
            ],
          ),
        ),
      ),
    );
  }
}