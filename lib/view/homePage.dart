import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thirtydaysofflutter/models/catelog.dart';
import 'package:thirtydaysofflutter/widgets/drawer.dart';
import 'package:thirtydaysofflutter/widgets/grid_item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    await Future.delayed(Duration(
        seconds:
            5)); //for adding deliberate wait to the process.. like thread.sleep
    var catalogJson = await rootBundle.loadString("assets/files/catelog.json");
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    catelogModel.items = List.from(productData)
        .map<Item>((item) => Item.fromJson(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(
    //     20, (index) => catelogModel.items[0]); //For generating list form 1 item

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Catalog App",
        ),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: (catelogModel.items != null && catelogModel.items.isNotEmpty)
            ?
            // ? ListView.builder(
            //     itemCount: catelogModel.items.length,
            //     itemBuilder: (context, index) {
            //       return ItemWidget(
            //         item: catelogModel.items[index],
            //       );
            //     },
            //   )
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16),
                itemCount: catelogModel.items.length,
                itemBuilder: (context, index) {
                  final item = catelogModel.items[index];
                  return GridItemWidget(item: catelogModel.items[index]);
                  //   return Card(
                  //       clipBehavior: Clip.antiAlias,
                  //       shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(15)),
                  //       child: GridTile(
                  //         header: Container(
                  //           child: Text(
                  //             item.name,
                  //             style: TextStyle(color: Colors.white),
                  //           ),
                  //           padding: EdgeInsets.all(12),
                  //           decoration: BoxDecoration(color: Colors.cyan),
                  //         ),
                  //         child: Image.network(item.image),
                  //         footer: Container(
                  //           child: Text(
                  //             item.price.toString(),
                  //             style: TextStyle(color: Colors.white),
                  //           ),
                  //           padding: EdgeInsets.all(12),
                  //           decoration: BoxDecoration(color: Colors.black),
                  //         ),
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
