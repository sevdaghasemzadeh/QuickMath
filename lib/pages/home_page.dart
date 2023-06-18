import 'package:flutter/material.dart';
import 'package:istanbul/serivce/auth_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
            child: Text("Log Out"), onPressed: (){
              authService.signOut();
          },
          )),
    );
  }
}
