import 'package:flutter/material.dart';

class ItemsDetails extends StatefulWidget {
  final data;
  const ItemsDetails({super.key, this.data});

  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
  /* List details = [
    {
      "image": 'images/western.jpg',
      "title": "western food",
    },
    {
      "image": "images/estfood.jpg",
      "title": "estern food",
    },
  ];*/
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("western food"),
        centerTitle: true,
        //backgroundColor: Colors.green,
        // actions: [IconButton(onPressed: () {}, icon: Icon(Icons.laptop))],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
         
          ],
        ),
      ),
    );
  }
}
