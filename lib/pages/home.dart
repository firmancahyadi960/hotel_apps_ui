import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_apps/contanta.dart';
import 'package:hotel_apps/pages/Homebody.dart';
import 'package:hotel_apps/pages/profile.dart';
import 'package:hotel_apps/pages/search.dart';

import 'order.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final _layout = [
    HomeBody(),
    SearchBar(),
    Order(),
    Profile(),
  ];
  void _ontabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundprimary,
      appBar: Appbar(),
      body: _layout.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 79,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/home.png",
                color: Colors.grey,
                scale: 5,
              ),
              // ignore: deprecated_member_use
              title: Text("Home"),
              activeIcon: Image.asset(
                "assets/images/home.png",
                scale: 5,
                color: backgroundsecond,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/search.png",
                scale: 5,
                color: Colors.grey,
              ),
              // ignore: deprecated_member_use
              title: Text("Search"),
              activeIcon: Image.asset(
                "assets/images/search.png",
                scale: 5,
                color: backgroundsecond,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
                size: 21,
              ),
              // ignore: deprecated_member_use
              title: Text("Order"),
              activeIcon: Icon(
                Icons.shopping_cart,
                color: backgroundsecond,
                size: 21,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/profile.png",
                scale: 5,
                color: Colors.grey,
              ),
              // ignore: deprecated_member_use
              title: Text("Profile"),
              activeIcon: Image.asset(
                "assets/images/profile.png",
                scale: 5,
                color: backgroundsecond,
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _ontabItem,
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar Appbar() {
    return AppBar(
      backgroundColor: backgroundsecond,
      elevation: 0,
      leading: IconButton(
        icon: Image.asset(
          "assets/images/drawer.png",
          scale: 4,
        ),
        onPressed: () {},
      ),
      title: Text(
        "Discover",
        style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          icon: Image.asset(
            "assets/images/notification.png",
            scale: 4,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
