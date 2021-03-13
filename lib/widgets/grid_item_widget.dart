import 'package:flutter/material.dart';
import 'package:thirtydaysofflutter/models/catelog.dart';

class GridItemWidget extends StatelessWidget {
  @override
  final Item item;

  const GridItemWidget({Key key, this.item})
      : assert(item != null),
        super(key: key);

  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      clipBehavior: Clip.antiAlias,
      child: GridTile(
        header: Container(
          decoration: BoxDecoration(color: Colors.cyan),
          child: Text(
            item.name,
            style: TextStyle(color: Colors.white),
          ),
        ),
        child: Image.network(item.image),
        footer: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Text(
            item.price.toString(),
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
