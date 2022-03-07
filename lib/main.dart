import 'package:flutter/material.dart';
import 'pages/HomePage.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {

  int current_index = 0;
  final screens = [
    HomePage(),
    Center(child: Text('Deepak1',style: TextStyle(fontSize: 60))),
    Center(child: Text('Deepak2',style: TextStyle(fontSize: 60))),
    Center(child: Text('Deepak3',style: TextStyle(fontSize: 60))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.grey,
        toolbarHeight: 0.4, // Status bar color
      ),
      backgroundColor: const Color(0xff000000),
      body: screens[current_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current_index,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              backgroundColor: Colors.blue,
            label: "Resources",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              label: "Trade",
              backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.blue
          ),
        ],
        onTap: (index){
          setState(() {
            current_index = index;
          });
        }
      ),
    );
  }
}
