import 'package:firebase_auth_demo/screens/home_screen.dart';
import 'package:firebase_auth_demo/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WalletPage extends StatefulWidget {
  static var routeName='/wallet';

  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                // const CircleAvatar(backgroundImage: NetworkImage(
                //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxyjlXGsLIVF-zGshVyUwcbG3DLLbsGOl1SA&usqp=CAU"),
                //   ),
                IconButton(
                onPressed: () => Navigator.pushNamed(context, HomePage.routeName),
                color: blackbutton, 
                icon: const Icon(Icons.arrow_back_ios)),
                  const Text("Your Wallet",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                  IconButton(
                    onPressed: (){},
                    color: blackbutton,
                     icon: const Icon(Icons.notifications),
                     ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),

          Container(
            child: Column(
              children: const [
                Text(
                  "Total Balance:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 8.0),
                Text("₹ 900",
                style: TextStyle(
                  color: greenbutton,
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
          ),

          // ignore: avoid_unnecessary_containers
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text("Add Money"),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(greenbutton)),),
                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text("Withdraw"),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(greenbutton)))
              ],
            ),
          ),

          const SizedBox(height: 100.0,
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 36.0, left: 26.0, right: 26.0),
              decoration: const BoxDecoration(
                color: blackbutton,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60.0),
                topRight: Radius.circular(60.0),
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Recent Transactions",
                  style: TextStyle(
                    color: secondaryBackgroundColor,
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),),
                const SizedBox(
                  height: 25.0,
                ),
                Expanded(child: ListView(
                  children: [
                    ListTiles(Icons.payment, secondaryBackgroundColor, "Amount Withdrawn", "You just deducted money from your wallet", 100),
                    ListTiles(Icons.payment, secondaryBackgroundColor, "Amount Added", "You just added money to your wallet", 500),
                    ListTiles(Icons.payment, secondaryBackgroundColor, "Amount Added", "You just added money to your wallet", 500),
                  ],
                ),)
                ],
                ),
            ),

          )
        ]
        ),
    ));
  }
}

// ignore: non_constant_identifier_names
Widget ListTiles(IconData icon, Color color, String type, String title, double value){
  return Container(
    padding: const EdgeInsets.all(8.0),
    margin: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: secondaryBackgroundColor,
      borderRadius: BorderRadius.circular(8.0)
    ),
    child: Row(
      children: [
        Container(
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            color: greenbutton,
            borderRadius: BorderRadius.circular(8.0), 
          ),
          child: Icon(icon, size: 32.0, color: secondaryBackgroundColor),
        ),
        const SizedBox(
          width: 12.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(type, 
          style: const TextStyle(
            color: Colors.black, 
            fontSize: 20.0,
            fontWeight: FontWeight.bold,            
            ),),
            const SizedBox(
              height: 8.0,
            ),
          Text(title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 10.0,
          ),
          ),
          Text("₹ $value", 
          style: const TextStyle(
            color: Colors.black,
            fontSize: 22.0, 
            fontWeight: FontWeight.bold, 
          ),)
        ],)
      ],
    ),
  );
}