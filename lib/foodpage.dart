import 'package:flutter/material.dart';
// import 'package:grade_project_test1/foodpage.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  List plates = [
    {
      "image": "images/photo.jpg",
      "title": "burger",
      "subtitle": "yummmmmmmmmmmmmmmmy",
      "price": "3\$"
    },
    {
      "image": "images/photo.jpg",
      "title": "shawerma",
      "subtitle": "yummmmmmmmmmmmmmmmy",
      "price": "2\$"
    },
    {
      "image": "images/photo.jpg",
      "title": "pancake",
      "subtitle": "yummmmmmmmmmmmmmmmy",
      "price": "2.5\$"
    },
    {
      "image": "images/photo.jpg",
      "title": "burger2",
      "subtitle": "yummmmmmmmmmmmmmmmy",
      "price": "4\$"
    },
    {
      "image": "images/photo.jpg",
      "title": "burger3",
      "subtitle": "yummmmmmmmmmmmmmmmy",
      "price": "3.5\$"
    },
    {
      "image": "images/photo.jpg",
      "title": "burger5",
      "subtitle": "yummmmmmmmmmmmmmmmy",
      "price": "3\$"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: "search",
                        fillColor: Colors.grey[200],
                        filled: true),
                  ),
                ),
                //const Icon(Icons.arrow_back)
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: 200,
              height: 200,
              child: Image.asset(
                'images/photo.jpg',
                //width: 100,
                //height: 100,
                fit: BoxFit.fill,
              ),
            ),
            Row(
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(), // ندفش العناصر للأخير
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "view all",
                    )),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      color: Colors.blue,
                      height: 50,
                      width: 50,
                      child: Image.asset('images/westfood.jpg'),
                    ),
                    Text("western food")
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
