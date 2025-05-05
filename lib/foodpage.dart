import 'package:flutter/material.dart';
import 'package:grade_project_test1/categories.dart';
import 'package:grade_project_test1/details.dart';
// import 'package:grade_project_test1/foodpage.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.green,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      drawer: Drawer(),
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
                'images/foood.jpg',
                //width: 100,
                //height: 100,
                fit: BoxFit.fill,
              ),
            ),
            Row(
              children: [
                Text("Categories",
                    style: Theme.of(context).textTheme.bodyLarge),
                Spacer(), // ندفش العناصر للأخير
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CategoriesDetails()));
                    },
                    child: Text(
                      "view all",
                      style: Theme.of(context).textTheme.bodySmall,
                    )),
              ],
            ),
            SizedBox(
              //هيه الي زبطتلي الخط
              height: 120, // Increased to avoid overflow
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ItemsDetails()));
                    },
                    child: Container(
                      color: Colors.grey[200],
                      width: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 70,
                            child: Image.asset(
                              categories[i]['image'],
                            ),
                            // padding: EdgeInsets.all(20)
                          ),
                          Container(
                            height: 5,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            categories[i]['title'],
                            //style: Theme.of(context).textTheme.bodyMedium,
                            softWrap: true,
                            overflow: TextOverflow.visible,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                Text(
                  "Favorites",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Spacer(), // ندفش العناصر للأخير
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "view all",
                      style: Theme.of(context).textTheme.bodySmall,
                    )),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: 200,
              height: 200,
              child: Image.asset(
                'images/food1.jpg',
                //width: 100,
                //height: 100,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: 200,
              height: 200,
              child: Image.asset(
                'images/food1.jpg',
                //width: 100,
                //height: 100,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: 200,
              height: 200,
              child: Image.asset(
                'images/food1.jpg',
                //width: 100,
                //height: 100,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
