import 'package:catalog/model/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item}) : assert(item != null ), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Card(
        child: ListTile(
          onTap: (){
          },
          leading:Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text("\$${item.price}",
              textScaleFactor: 1.25,
              style: TextStyle(
              color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
    );
  }
}
