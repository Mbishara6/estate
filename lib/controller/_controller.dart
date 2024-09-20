
import 'package:estate/Home.dart';
import 'package:estate/search.dart';
import 'package:get/get.dart';
class BottomNavigationBarController extends GetxController{
  RxInt index = 0.obs;
  var pages = [
    const Search(),
  //  Message(),
    const Home(),
   // Favourite(),
  //  Person(),


  ];

}
