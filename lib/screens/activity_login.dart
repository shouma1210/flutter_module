import 'package:flutter/material.dart';

class ConvertedLogin extends StatelessWidget {
  const ConvertedLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(child: Column(children: [
  Padding(padding: EdgeInsets.only(bottom: 28.0), child: TextField(decoration: InputDecoration(hintText: "Password"))),
  Padding(padding: EdgeInsets.only(bottom: 44.0), child: Text("LOGIN", style: TextStyle(fontSize: 34.0))),
  Padding(padding: EdgeInsets.only(bottom: 28.0), child: TextField(decoration: InputDecoration(hintText: "Username"))),
  Padding(padding: EdgeInsets.only(bottom: 148.0), child: Text("Dont have an Account? SignUp")),
  Padding(padding: EdgeInsets.only(bottom: 188.0), child: ElevatedButton(onPressed: (){}, child: Text("Login")))
])),
    );
  }
}