import 'package:flutter/material.dart';
import 'converted_login.dart';

class ConvertedSignup extends StatefulWidget {
  const ConvertedSignup({super.key});

  @override
  State<ConvertedSignup> createState() => _ConvertedSignupState();
}

class _ConvertedSignupState extends State<ConvertedSignup> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ConvertedSignup')),
      body: SizedBox.expand(child: Column(children: [
  Padding(padding: EdgeInsets.only(bottom: 20.0), child: ElevatedButton(onPressed: () => _onSignupbuttonPressed(context), child: Text("SIGN UP"))),
  Text("SIGN UP", style: const TextStyle(fontSize: 16)),
  Padding(padding: EdgeInsets.only(bottom: 24.0), child: TextField(controller: _usernameController, decoration: InputDecoration(hintText: "Username"))),
  Padding(padding: EdgeInsets.only(bottom: 28.0), child: TextField(controller: _passwordController, obscureText: true, decoration: InputDecoration(hintText: "Password"))),
  Padding(padding: EdgeInsets.only(bottom: 36.0), child: TextField(controller: _confirmPasswordController, obscureText: true, decoration: InputDecoration(hintText: "Confirm Password"))),
  Padding(padding: EdgeInsets.only(bottom: 104.0), child: InkWell(onTap: () => _onLoginredirecttextPressed(context), child: Text("Already a User? Login", style: const TextStyle(fontSize: 16))))
])),
    );
  }

  // ===== Auto-Generated Handlers (State Internal) =====
void _onSignupbuttonPressed(BuildContext context) {
    final username = _usernameController.text.trim();
final password = _passwordController.text.trim();
final confirmPassword = _confirmPasswordController.text.trim();
if (username.isEmpty || password.isEmpty || confirmPassword.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("All fields Required")));
} else {
                    if (password == confirmPassword){final bool checkUsernamePassword = true; // TODO: implement DB check
if (!checkUsernamePassword){
                             final bool inserted = true; // TODO: implement DB inserted
if (inserted){
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Sign Up Successful")));
Navigator.push(context, MaterialPageRoute(builder: (context) => const ConvertedLogin()));
} else {
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Sign Up Failed")));
}
                        } else {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("User Exists")));
}
                    } else {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Invalid Password")));
}
                }
  }


  void _onLoginredirecttextPressed(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ConvertedLogin()));
  }
}

