import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:we_chat/Services/auth_gate.dart';
import 'package:we_chat/Services/auth_service.dart';
import 'package:we_chat/firebase_options.dart';
import 'package:we_chat/screens/LoginPage.dart';
import 'package:we_chat/screens/RegistrationPage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthService(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
      routes: {
        LoginPage.id: (context) => LoginPage(),
        RegistrationPage.id: (context) => RegistrationPage()
      },
    );
  }
}
