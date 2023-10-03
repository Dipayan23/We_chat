import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:we_chat/Services/auth_service.dart';
import 'package:we_chat/components/my_text_field.dart';
import 'package:we_chat/components/my_button.dart';
import 'package:we_chat/screens/RegistrationPage.dart';
//import 'package:provider/provider.dart';
//import 'package:we_chat/main.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_screen';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  void SignIn() async {
    final authService = Provider.of<AuthService>(context, listen: false);

    try {
      await authService.SigninwithEmailandPassword(
        emailcontroller.text,
        passwordcontroller.text,
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.message,
                  size: 100,
                  color: Colors.grey[800],
                ),
                SizedBox(height: 25),
                Text(
                  'Welcome Back You have been missed',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 25),
                MyTextField(
                  controller: emailcontroller,
                  hintText: 'Email',
                  obscureText: false,
                ),
                SizedBox(height: 10),
                MyTextField(
                  controller: passwordcontroller,
                  hintText: 'Password',
                  obscureText: true,
                ),
                SizedBox(height: 25),
                MyButton(onTap: SignIn, text: 'Sign In'),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member?'),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RegistrationPage.id);
                      },
                      child: Text(
                        'Register now',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
