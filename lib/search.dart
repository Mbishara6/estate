
import 'package:flutter/material.dart';


class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Search(),
    );
  }
}
class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(width: 0.8),
              ),
              hintText: 'Search',
              prefixIcon: const Icon(
                Icons.search,
                size: 30,),
            ),
          ),
        ],

      ),),);
  }
}