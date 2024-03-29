import 'package:catalog/model/catalog.dart';
import 'package:catalog/screens/cartpage.dart';
import 'package:catalog/screens/homedetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CatalogImage.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetails(
                catalog: catalog,
              ),
            ),
          ),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}
class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            Hero(
                tag: Key(catalog.id.toString()),
                child: CatalogImage(image: catalog.image)),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  catalog.name.text.bold.lg.color(context.accentColor).make(),
                  catalog.desc.text.textStyle(context.captionStyle).make(),
                  10.heightBox,
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    buttonPadding: EdgeInsets.zero,
                    children: [
                      "\$${catalog.price}".text.bold.xl.make(),
                      ElevatedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CartPage(

                              ),
                            ),
                          ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(context.theme.buttonColor,),
                            shape: MaterialStateProperty.all(
                              StadiumBorder(),
                            )),
                        child: "Add To Cart".text.make(),
                      )
                    ],
                  ).pOnly(right: 8.0)
                ],
              ),
            ),
          ],
        )
    ).color(context.cardColor).rounded.square(150).make().py16();
  }
}
