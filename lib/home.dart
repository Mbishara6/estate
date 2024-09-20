
import 'package:estate/controller/_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    BottomNavigationBarController controller  = Get.put(BottomNavigationBarController());
    return  Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical:20.0),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade600,
            padding: const EdgeInsets.all(15),
            gap: 8,
            onTabChange: (value){
              controller.index.value= value;
            },
            tabs: const [
              GButton(icon: Icons.search,
              text: 'search',),
              GButton(icon: Icons.message,
              text: 'message',),
              GButton(icon: Icons.home,
              text: 'home',),
              GButton(icon: Icons.favorite,
              text:'favourite'),
              GButton(icon: Icons.person,
                  text:'person'),

            ],
          ),
        ),
      ),
      body: controller.pages[controller.index.value],
    );
  }
}
