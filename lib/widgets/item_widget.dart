import 'package:flutter/material.dart';
import 'package:thirtydaysofflutter/models/catelog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        tileColor: Colors.cyan.shade50,
        onTap: () {
          print(item.name + " was clicked");
        },
        leading: Image.network(item.image),
        title: Text(
          item.name,
        ),
        subtitle: Text(item.desc),
        trailing: Text(
          "₹" + item.price.toString(),
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 1.2,
        ),
      ),
    );
  }
}
