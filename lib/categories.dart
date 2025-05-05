import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoriesDetails extends StatefulWidget {
  @override
  State<CategoriesDetails> createState() => _CategoriesDetailsState();
}

class _CategoriesDetailsState extends State<CategoriesDetails> {
  List categories = [
    {
      "image": 'images/westfood.jpg',
      "title": "western food",
    },
    {
      "image": "images/estfood.jpg",
      "title": "estern food",
    },
    {
      "image": "images/sweets.jpg",
      "title": "sweets",
    },
    {
      "image": "images/westfood.jpg",
      "title": "western food",
    },
    {
      "image": "images/estfood.jpg",
      "title": "estern food",
    },
    {"image": "images/sweets.jpg", "title": "sweets"},
    {
      "image": "images/photo.jpg",
      "title": "burger5",
    },
  ];
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        centerTitle: true,
        // backgroundColor: Colors.green,
      ),
      body: Container(
        child: ListView(
          children: [
            GridView.builder(
              itemCount: categories.length,
              physics: NeverScrollableScrollPhysics(), //تعطيل السكرول
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, mainAxisExtent: 230),
              itemBuilder: (context, i) {
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 500,
                        child: Image.asset(
                          categories[i]['image'],
                          // "images/western.jpg",
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(categories[i]['title'])
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
