import 'package:firebase_auth_demo/screens/booking_screen.dart';
import 'package:firebase_auth_demo/screens/profile_screen.dart';
import 'package:firebase_auth_demo/screens/wallet.dart';
import 'package:firebase_auth_demo/services/firebase_auth_methods.dart';
import 'package:firebase_auth_demo/utils/app_styles.dart';
import 'package:firebase_auth_demo/utils/colors.dart';
import 'package:firebase_auth_demo/widgets/custom_button.dart';
import 'package:firebase_auth_demo/widgets/booking_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:gap/gap.dart';

import 'login_screen.dart'; 

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  static String routeName = '/home-page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        drawer: Drawer(
          child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('User54809'),
            accountEmail: const Text('usermail@pai.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://www.baxterip.com.au/wp-content/uploads/2019/02/anonymous.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: blackbutton,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.timeline),
            title: const Text('Book Charger'),
            onTap: () => Navigator.pushNamed(context, BookingPage.routeName),
          ),
          ListTile(
            leading: const Icon(Icons.feedback),
            title: const Text('Feedback'),
            onTap: () => Navigator.pushNamed(context, ProfilePage.routeName),
          ),
          ListTile(
            leading: const Icon(Icons.wallet),
            title: const Text('Wallet'),
            onTap: () => Navigator.pushNamed(context, WalletPage.routeName),
          ),
           ListTile(
            leading: const Icon(Icons.contact_page),
            title: const Text('Contact Us'),
            onTap: () => Navigator.pushNamed(context, ProfilePage.routeName),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => Navigator.pushNamed(context, ProfilePage.routeName),
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text('Terms & Conditions'),
            onTap: () => null,
          ),
          const Divider(),
          ListTile(
            title: const Text('Exit'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () {
              Navigator.pushNamed(context, LoginScreen.routeName);
            }
          ),
        ],
      ),
        ),
      body: Stack(
        children: [
          IconButton( 
            icon: const Icon(Icons.menu), 
            color: blackbutton,
            onPressed: () {
              _globalKey.currentState?.openDrawer();
            },
            ),
            Center(
              child: Padding(
              padding: const EdgeInsets.all(19.0),
              child: Container(
                height: 320,
                width: 350,
                margin: const EdgeInsets.fromLTRB(0, 15, 0, 50),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/mapbms.jpg')),
                ),
                ),
          ),
            ),
          Center(
            child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome to", style: Styles.header4,),
                        const Gap(5),
                        Text("ProCharge+", style: Styles.header1,),
                        ],
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit:BoxFit.cover,
                          image: AssetImage("assets/images/rocket.png")
                        )
                      ),
                    )
                  ],
                ),
                const Gap(355),
                Row(
                  children: [
                    SizedBox(
                      width: 320,
                      child: Text("Which Vehicle do you want to take charge today?", style: Styles.header2,),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: greenbutton),
                      const Gap(10, crossAxisExtent: 10,),
                      Text("Search", style: Styles.header4,),
                    ],
                  ),
                ),
                const Gap(25),
              ],
            ),
          ),)
        ],
      ),
      backgroundColor: Styles.bgcolor,
      ),
    );
  }
}

