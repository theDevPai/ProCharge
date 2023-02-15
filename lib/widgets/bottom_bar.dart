import 'package:firebase_auth_demo/screens/booking_screen.dart';
import 'package:firebase_auth_demo/screens/home_screen.dart';
import 'package:firebase_auth_demo/screens/profile_screen.dart';
import 'package:firebase_auth_demo/screens/wallet.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/src/widgets/container.dart';
// ignore: unnecessary_import
import 'package:flutter/src/widgets/framework.dart';

import '../utils/colors.dart';

class BottomBar extends StatefulWidget {
  static var routeName='\bottombar';

  BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  
  // ignore: unused_field
  int _selectedIndex=0;

  void _onItemTapped(int index){
    setState(() { 
      _selectedIndex=index;
    });
  }

  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    const BookingPage(),
    const WalletPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex ,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: greenbutton,
        unselectedItemColor: blackbutton,
        type: BottomNavigationBarType.fixed,
        items: const [
           BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_filled),
            label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.time_to_leave_outlined),
            activeIcon: Icon(Icons.time_to_leave),
            label: "Booking Later"),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_outlined), 
            activeIcon: Icon(Icons.wallet),
            label: "Wallet"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label:"Profile"),
        ]
      ),
    );
  }
}