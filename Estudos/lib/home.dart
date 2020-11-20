import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar com o título da rede social
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text(
          "Rede Social",
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      endDrawer: Drawer(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.white70,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black38,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: "Camera",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
