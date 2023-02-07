import 'package:firebase_auth_demo/screens/home_screen.dart';
import 'package:firebase_auth_demo/screens/login_screen.dart';
import 'package:firebase_auth_demo/utils/colors.dart';
import 'package:firebase_auth_demo/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatefulWidget {
  static var routeName='\profilepage';

  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenbutton,
        leading: IconButton(onPressed: (){Navigator.pushNamed(context, BottomBar.routeName);},icon: const Icon(Icons.arrow_back_ios),),
        title: const Text("Profile", style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),),
        actions: [IconButton(onPressed: (){Navigator.pushNamed(context, LoginScreen.routeName);}, icon: const Icon(Icons.logout_outlined))],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(borderRadius: BorderRadius.circular(100),
                  child: const Image(image: AssetImage("assets/images/anonymous.jpg"))),
                ),
                const SizedBox(height: 10),
                Text("Nandan", style: Theme.of(context).textTheme.headline4,),
                Text("nandan@mail.com", style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.grey),),
                TextButton(
                child: Text("Edit", style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.blue)),
                onPressed: () {},
                ),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 10),

                const ProfileMenuWidget(title: "Settings", iconprof: Icons.settings, endIcon: true,textColor: blackbutton, ),
                const ProfileMenuWidget(title: "FAQ", iconprof: Icons.question_mark, endIcon: true,textColor: blackbutton, ),
                const ProfileMenuWidget(title: "About Us", iconprof: Icons.info, endIcon: true,textColor:blackbutton , ),
                const ProfileMenuWidget(title: "Invite A Friend", iconprof: Icons.person_add, endIcon: true,textColor: blackbutton,),
                const ProfileMenuWidget(title: "Help", iconprof: Icons.help, endIcon: true,textColor: Colors.red,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key, required this.title, required this.iconprof, required this.endIcon, this.textColor,
  }) : super(key: key);

  final String title;
  final IconData iconprof;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: greenbutton,
        ),
        child: Icon(iconprof, color: blackbutton),
      ),
      title: Text(title, style: Theme.of(context).textTheme.bodyText1),
      trailing: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey,
        ),
        child: const Icon(Icons.arrow_forward_ios, color: blackbutton,),
      ),
    );
  }
}