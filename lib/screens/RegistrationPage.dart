import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:we_chat/Services/auth_service.dart';
import 'package:we_chat/components/my_button.dart';
import 'package:we_chat/components/my_text_field.dart';
import 'package:we_chat/screens/LoginPage.dart';

class RegistrationPage extends StatefulWidget {
  static String id = 'registration_screen';
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmpassword = TextEditingController();


  void SignUp() async {
    if (passwordcontroller.text != confirmpassword.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Password don\'t match'),
        ),
      );
      return;
    }
    final authService = await Provider.of<AuthService>(context, listen: false);
    try {
      await authService.signUpWithEmailAndPassword(
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(25),
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
                  'Lets  start your journey',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                MyTextField(
                  controller: emailcontroller,
                  hintText: 'Email',
                  obscureText: false,
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                  controller: passwordcontroller,
                  hintText: 'Password',
                  obscureText: true,
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                  controller: confirmpassword,
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),
                SizedBox(
                  height: 10,
                ),
                MyButton(onTap: SignUp, text: 'Sign Up'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, LoginPage.id);
                      },
                      child: Text(
                        'Sign IN please',
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
