import 'package:flutter/cupertino.dart';
import '../theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.color(context.accentColor).make(),
        "Trending Products".text.xl2.color(context.accentColor).make(),
      ],
    );
  }
}

