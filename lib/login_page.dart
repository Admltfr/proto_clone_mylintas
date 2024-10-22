import 'package:flutter/material.dart';
import 'package:flutter_stateless_statefull/main_page.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  final _codeKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height / 3,
                      child: Opacity(
                        opacity: 0.3,
                        child: Image.asset(
                          'assets/images/logologinmylintas.jpg',
                          fit: BoxFit.fitHeight,
                        ),
                      )),
                  Container(
                      alignment: Alignment.center,
                      width: MediaQuery.sizeOf(context).width / 2,
                      height: 80,
                      child: Image.asset(
                        'assets/images/logomylintas.png',
                      )),
                ],
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 10, 0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Masuk",
                    style: TextStyle(fontSize: 25, color: Colors.black54),
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(20, 5, 10, 3),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Silahkan masuk menggunakan email yang terdaftar.",
                    style: TextStyle(fontSize: 11.5, color: Colors.black45),
                  )),
              Form(
                  key: _codeKey,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: MediaQuery.sizeOf(context).width,
                          height: MediaQuery.sizeOf(context).width / 8,
                          child: TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.mail,
                                color: Colors.black38,
                              ),
                              labelText: "john@gmail.com",
                              labelStyle: TextStyle(color: Colors.black38),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black12,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          width: MediaQuery.sizeOf(context).width,
                          height: 40,
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.black38,
                              ),
                              labelText: "*******",
                              labelStyle: TextStyle(color: Colors.black38),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black12,
                                  width: 1.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black12,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  color: Colors.transparent,
                  child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        splashFactory: NoSplash.splashFactory,foregroundColor: Colors.transparent,
                        
                        
                      ),
                      child: Text(
                        "Lupa Password?",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}

/*decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.blue.shade200, Colors.red.shade200],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            )),*/

/*Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height / 3,
                    child: Opacity(
                      opacity: 0.3,
                      child: Image.asset(
                        'assets/images/logologinmylintas.jpg',
                        fit: BoxFit.fitHeight,
                      ),
                    )),
                Container(
                    alignment: Alignment.center,
                    width: MediaQuery.sizeOf(context).width / 2,
                    height: 80,
                    child: Image.asset(
                      'assets/images/logomylintas.png',
                    )),
              ],
            ),*/