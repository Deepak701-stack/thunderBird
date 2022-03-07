import 'package:flutter/material.dart';

class MostLikedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 200,
          width: 370,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index) => Container(
              height: 100,
              width: 250,
              margin: EdgeInsets.all(5),
              child: Center(
                child: Text("Card $index"),
              ),
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}