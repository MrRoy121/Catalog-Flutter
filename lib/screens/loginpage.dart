import 'package:catalog/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 120,),
            Image.asset("assets/image/login.png",
              height: 150,
            ),
            SizedBox(height: 15,),
            Text("Login Here",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(height: 50,),
                ElevatedButton(
                    onPressed:(){
                      Navigator.pushNamed(context, MyRoute.HomeRoute);
                }, child: Text("Login",
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
                style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                ),
              ],),
            ),
          ],
        ),
      ));
  }
}
