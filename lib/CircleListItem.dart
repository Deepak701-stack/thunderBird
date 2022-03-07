import 'package:flutter/material.dart';

class CircleListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            _buildCircleImages(),
            _buildTexts()
          ],
        ),
      ],
    );
  }
}

 Widget _buildCircleImages(){
  return Padding(padding:
  EdgeInsets.symmetric(horizontal: 0,vertical: 0),
  child: Container(
    height: 75,
      width: 75,
      padding: EdgeInsets.all(0.5),
    decoration: BoxDecoration(
      color: Color(0xdd0e3311),
      border: new Border.all(
        color: Colors.black54
      ),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40.0),
        topRight: Radius.circular(40.0),
        bottomLeft: Radius.circular(40.0),
        bottomRight: Radius.circular(40.0)
      ),
    ),
    child: ClipOval(
      child: Image.network("https://images.unsplash.com/photo-1638913971873-bcef634bdcd9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
      fit: BoxFit.cover,
      ),
    ),
  ),
  );
 }

 Widget _buildTexts(){
  return Text(
      "deepak",
      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
  );
 }