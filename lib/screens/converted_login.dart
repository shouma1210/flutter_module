import 'package:flutter/material.dart';
import 'converted_main.dart';
import 'converted_signup.dart';

class ConvertedLogin extends StatefulWidget {
  const ConvertedLogin({super.key});

  @override
  State<ConvertedLogin> createState() => _ConvertedLoginState();
}

class _ConvertedLoginState extends State<ConvertedLogin> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ConvertedLogin')),
      body: SizedBox.expand(child: Column(children: [
  Padding(padding: EdgeInsets.only(bottom: 28.0), child: TextField(controller: _passwordController, obscureText: true, decoration: InputDecoration(hintText: "Password"))),
  Padding(padding: EdgeInsets.only(bottom: 44.0), child: Text("LOGIN", style: const TextStyle(fontSize: 16))),
  Padding(padding: EdgeInsets.only(bottom: 28.0), child: TextField(controller: _usernameController, decoration: InputDecoration(hintText: "Username"))),
  Padding(padding: EdgeInsets.only(bottom: 148.0), child: InkWell(onTap: () => _onSignupredirecttextPressed(context), child: Text("Dont have an Account? SignUp", style: const TextStyle(fontSize: 16)))),
  Padding(padding: EdgeInsets.only(bottom: 188.0), child: ElevatedButton(onPressed: () => _onLoginbuttonPressed(context), child: Text("Login")))
])),
    );
  }

  // ===== Auto-Generated Handlers (State Internal) =====
void _onLoginbuttonPressed(BuildContext context) {
    final username = _usernameController.text.trim();
final password = _passwordController.text.trim();
if (username.isEmpty || password.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("All fields Required")));
} else {final bool checkdetails = true; // TODO: implement DB check
if (checkdetails) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("All fields Required")));
Navigator.push(context, MaterialPageRoute(builder: (context) => const ConvertedMain()));
} else {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Invalid Details")));
}
                }
  }


  void _onSignupredirecttextPressed(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ConvertedSignup()));
  }
}

