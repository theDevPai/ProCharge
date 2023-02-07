import 'package:firebase_auth_demo/screens/wallet.dart';
import 'package:firebase_auth_demo/utils/app_styles.dart';
import 'package:firebase_auth_demo/utils/colors.dart';
import 'package:firebase_auth_demo/widgets/dropdown_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class BookingPage extends StatefulWidget {
  static var routeName='\bookingpage';

  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              // ignore: avoid_unnecessary_containers
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Book Charger", style: Styles.header3.copyWith(color: Colors.black),),
                        InkWell(
                            onTap: (){
                            },
                            child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primarycolor),))
                      ],
                    ),
                    const Gap(15),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      // padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        children: [
                          Card(
                            elevation: 20,
                            child: Container(
                              child: ListTiles(Icons.car_crash, secondaryBackgroundColor,"Book Later","Click Here to Book Charger later",0)),
                          ),

                          const Gap(40),
                          Card(
                            elevation: 20,
                            child: Column(
                              children: [
                                Container(
                                  child: ListTiles(Icons.car_crash, secondaryBackgroundColor,"Book Now","Click Here to Book Charger Instantly",100)),
                                  Container(
                                    child: const DropdownButtonExample(),
                                  )
                              ],
                            )
                              
                              ),
                        ],
                      )
                    )
                    ],
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
