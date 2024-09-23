import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({super.key});

  // Extracted image function for reusability
  Widget imageFunc(Size size) {
    return Container(
      width: size.width,
      height: size.height / 3.5,
      child: Stack(
        children: [
          ClipRRect(
            child: Image.asset(
              "images/vegeta.jpg",
              fit: BoxFit.cover,
              width: double.infinity, // Ensures the image covers the entire container
              height: double.infinity,
            ),
          ),

          Positioned(

            child:
              Center(
                child: Container(
                  width: size.width ,
                  height:size.height/3.5,
                  child: const Icon(
                    Icons.play_circle_fill,
                    size: 40,
                    color: Colors.white,

                  ),
                ),
              )
              ,
          ),
          const Positioned(
              top: 10,
              right: 10,
              child: Icon(
                Icons.share,
                size: 30,
                color: Colors.white,
              )),
        const Positioned(
              top: 10,
              left: 10,
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Get screen size

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          imageFunc(size),
        ],
      ),
    );
  }
}
