import 'package:cafe/models/Coffee.dart';
import 'package:flutter/material.dart';
import 'package:cafe/detail_screen/detail_screen.dart';
import './coffee_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFCE9034),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lengkapi hari Anda dengan secangkir kopi',
              style: TextStyle(fontSize: 25.0),
            ),
            Categories(),
            Expanded(
              child: ListView.builder(
                itemCount: coffeeList.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => CoffeeCard(
                  coffee: coffeeList[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        coffee: coffeeList[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    'Kopi',
    'Es Kopi',
    'Teh panas',
    'Es Teh',
    'Spesial',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.0,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 20.0, 15.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color:
                    selectedIndex == index ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color:
                      selectedIndex == index ? Colors.black : Color(0xFF27251F),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
