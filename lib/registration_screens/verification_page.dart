import 'package:e_commerce_app/main_layout/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class VerificationPage extends StatefulWidget
{
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage>
{
  String? _code;
  bool _onEditing = false;

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
                margin: const EdgeInsets.only(top: 30, left: 30, bottom: 10),
                width: MediaQuery.sizeOf(context).width,
                child: const Text("Verification", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))
              ),

               Container
              (
                margin: const EdgeInsets.only(left: 30, bottom: 10, right: 30),
                width: MediaQuery.sizeOf(context).width,
                child: const Text("Please enter the OTP code sent to you by email", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
              ),
              
              const SizedBox(height: 50),

              VerificationCode
              (
                textStyle: const TextStyle(fontSize: 20.0, color: Colors.black),
                keyboardType: TextInputType.number,
                underlineColor: Colors.purple,
                length: 4,
                cursorColor: Colors.purple,
                clearAll: Padding
                (
                  padding: const EdgeInsets.all(15),
                  child: Text
                  (
                    "Clear all",
                    style: TextStyle(fontSize: 20, decoration: TextDecoration.underline, color: Colors.blue[700]),
                  ),
                ),
                onCompleted: (String value) 
                {
                  setState(()
                  {
                    _code = value;
                  });
                },
                onEditing: (bool value)
                {
                  setState(()
                  {
                    _onEditing = value;
                  });
                  if (!_onEditing) FocusScope.of(context).unfocus();
                },
              ),
        
              const SizedBox(height: 300,),

              MaterialButton
              (
                onPressed: () {Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const MainLayout(),), (route) => false);},
                color: Colors.purple,
                minWidth: MediaQuery.sizeOf(context).width - 60,
                height: 50,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                child: const Text("Verify", style: TextStyle(color: Colors.white, fontSize: 20),),
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}