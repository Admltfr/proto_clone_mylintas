import 'package:flutter/material.dart';
import 'package:flutter_stateless_statefull/main_page.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.blue.shade200, Colors.red.shade200],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            )),
          ),
        ),
        body: Center(
          child: Container(
            child: ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                return MainPage();
              }));
            }, child: Text("Login")),
          ),
        ),
      ),
    );
  }
}
