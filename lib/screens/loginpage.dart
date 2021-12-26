import 'package:catalog/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool buttonstate = false;
  String username = "";

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if(_formkey.currentState!.validate()) {
      setState(() {
        buttonstate = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoute.HomeRoute);
      setState(() {
        buttonstate = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: context.canvasColor,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
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
              SizedBox(height: 7,),
              Text("Welcome $username",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Username can not be empty";
                      }
                      return null;
                    },
                    onChanged: (value){
                      username = value;
                      setState(() {
                      });
                    },
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Password can not be empty";
                      }
                      else if(value.length < 4){
                        return "Minimum length of Password is 4";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 50,),

                  Material(
                    color: context.theme.buttonColor,
                    borderRadius:
                    BorderRadius.circular(buttonstate ? 50 : 8),
                    child: InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: buttonstate ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: buttonstate
                            ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                            : Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
                ),
              )
            ],
          ),
        ),
      ));
  }
}
