import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dashboardPage extends StatefulWidget {
  const dashboardPage({super.key});

  @override
  State<dashboardPage> createState() => _dashboardPageState();
}

class _dashboardPageState extends State<dashboardPage> {

  horizontalscrollfunc(var size, var color) {
    return Container(
      width: size.width / 1.5,
      height: size.height / 4,
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Container(
            width: size.width / 1.5,
            height: size.height / 4,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Opacity(
                opacity: 0.7, // Set opacity here (0.0 to 1.0)
                child: Image.asset(
                  "images/bg.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: size.width / 2,
              decoration: BoxDecoration(
                color: Colors.black12,
              ),
              child: Text(
                "Charitra is handsome",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 10,
            child: Text(
              "The b",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 3,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              "The greatest of all time",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 3,
            ),
          ),
          Positioned(
            bottom: 5,
            right: 5,
            child: Icon(
              Icons.star,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  horizontalscrollfunc(size, 0xfffff00f), // Pass color argument
                  SizedBox(width: 10),
                  horizontalscrollfunc(size, 0xfffff00fa), // Pass color argument
                  SizedBox(width: 10),
                  horizontalscrollfunc(size, 0xfffff1115), // Pass color argument
                  SizedBox(width: 10),
                  horizontalscrollfunc(size, 0xfffff4445), // Pass color argument
                ],
              )
          ),
          SizedBox(height: 50),
          Container(
            height: size.height / 2,
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return horizontalscrollfunc(size, Colors.blueAccent); // Adding color
              },
            ),
          ),
        ],
      ),
    );
  }
}
