import 'package:firebase/screens/API_Screeen.dart';
import 'package:flutter/material.dart';
import 'package:firebase/components/variables.dart';

class Login extends StatefulWidget {
  //const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  hideUnHide(){
    setState(() {
      hideText=!hideText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key("Screen"),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              key: Key("Email"),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextField(
              controller: passwordController,
              key: Key("Password"),
              obscureText: hideText,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: InkWell(
                  onTap: () {
                    hideUnHide();
                  },
                  child: hideText == true
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                ),
              ),
            ),
            ElevatedButton(
              key: Key("Submit"),
              onPressed: () {
                print("SUBMIT button pressed...");
                setState(() {
                  email = emailController.text;
                  password = passwordController.text;
                });
                print("Come ");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => APIScreen(),
                  ),
                );
              },
              child: Text("SUBMIT"),
            ),
          ],
        ),
      ),
    );
  }
}
