import 'package:catalog/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Catalog App",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome To Catalog"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
