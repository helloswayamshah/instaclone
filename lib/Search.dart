import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2),
      itemCount: 51,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(
                      'https://thumbor.forbes.com/thumbor/fit-in/1200x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5f664f1ec2191c793cf3bd8d%2F0x0.jpg'))),
        );
      },
    ));
  }
}
