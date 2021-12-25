import 'package:flutter/cupertino.dart';
import '../theme.dart';
import 'package:velocity_x/velocity_x.dart';


class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({Key? key,  required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image,
    ).box.rounded.p8.color(MyTheme.cream).make().p16().w40(context);
  }
}
