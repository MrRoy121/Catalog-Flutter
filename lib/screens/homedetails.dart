import 'package:catalog/model/cart.dart';
import 'package:catalog/model/catalog.dart';
import 'package:catalog/widgets/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'cartpage.dart';



class HomeDetails extends StatelessWidget {
  final Item catalog;

  const HomeDetails({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ButtonClass(catalog: catalog),
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl4
                            .color(context.accentColor)
                            .bold
                            .make(),
                        catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                        10.heightBox,
                        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate"
                          .text.align(TextAlign.justify).textStyle(context.captionStyle).make().px16()
                      ],
                    ).py64(),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class ButtonClass extends StatefulWidget {

  final Item catalog;
  const ButtonClass({Key? key, required this.catalog}) : super(key: key);
  @override
  State<ButtonClass> createState() => _ButtonClassState();
}

class _ButtonClassState extends State<ButtonClass> {

  bool isadded = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        isadded = isadded.toggle();

        final _catalog = CatalogModel();
        final _cart = CartClass();
        _cart.catalog = _catalog;
        _cart.add(widget.catalog);
        setState(() {

        });
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            context.theme.buttonColor,
          ),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isadded ? Icon(Icons.done) : "Add To Cart".text.make(),
    ).wh(120, 50);
  }
}
