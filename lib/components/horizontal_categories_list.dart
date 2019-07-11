import 'package:flutter/material.dart';

class HorizontalCategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image: 'images/cats/tshirt.png',
            name: 'Shirt',
          ),
          Category(
            image: 'images/cats/dress.png',
            name: 'Dress',
          ),
          Category(
            image: 'images/cats/jeans.png',
            name: 'Jeans',
          ),
          Category(
            image: 'images/cats/formal.png',
            name: 'Formal',
          ),
          Category(
            image: 'images/cats/informal.png',
            name: 'Informal',
          ),
          Category(
            image: 'images/cats/shoe.png',
            name: 'Shoes',
          ),
          Category(
            image: 'images/cats/accessories.png',
            name: 'Accessories',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image;
  final String name;

  Category({this.image, this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 80.0,
          child: ListTile(
            title: Image.asset(
              image,
              width: 80.0,
              height: 50.0,
              fit: BoxFit.contain,
            ),
            subtitle: Container(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              alignment: Alignment.topCenter,
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
