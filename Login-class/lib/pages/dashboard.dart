import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dashboardPage extends StatefulWidget {
  const dashboardPage({super.key});

  @override
  State<dashboardPage> createState() => _dashboardPageState();
}

class _dashboardPageState extends State<dashboardPage> {

  horizontalscrollfunc(var size, var color){
    return Container(
      width: size.width/1.5,
      height: size.height/5,
      decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadius.circular(20)
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
              child:Row(
                children: [
                  horizontalscrollfunc(size, 0xfffff00f),
                  SizedBox(width: 10,),
                  horizontalscrollfunc(size, 0xfffff00fa),
                  SizedBox(width: 10,),
                  horizontalscrollfunc(size, 0xfffff1115),
                  SizedBox(width: 10,),
                  horizontalscrollfunc(size, 0xfffff4445),

                ],

              )
          ),
          SizedBox(height: 50,),
          Container(
            height: size.height/2,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child:Column(
                  children: [
                    horizontalscrollfunc(size, 0xfffff00f),
                    SizedBox(width: 10,),
                    horizontalscrollfunc(size, 0xfffff00fa),
                    SizedBox(width: 10,),
                    horizontalscrollfunc(size, 0xfffff1115),
                    SizedBox(width: 10,),
                    horizontalscrollfunc(size, 0xfffff4445),

                  ],

                )
            ),
          )

        ],

      ),

    );
  }
}