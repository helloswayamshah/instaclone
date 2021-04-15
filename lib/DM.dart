import 'package:flutter/material.dart';
import 'package:instaclone/Search.dart';
import 'package:instaclone/main.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class DM extends StatefulWidget {
  @override
  _DMState createState() => _DMState();
}

class _DMState extends State<DM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'SwayamShah ▾ ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Icon(
                        Icons.list,
                        size: 35,
                      ),
                    ),
                    Icon(
                      Icons.history_edu,
                      size: 35,
                    )
                  ],
                )
              ])
            ],
          ),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (index, context) {
              return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                      child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 38,
                                    backgroundColor: Colors.pink,
                                    child: CircleAvatar(
                                      radius: 35.0,
                                      backgroundImage: NetworkImage(
                                          'https://thumbor.forbes.com/thumbor/fit-in/1200x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5f664f1ec2191c793cf3bd8d%2F0x0.jpg'),
                                    ),
                                  )),
                              Column(
                                children: [
                                  Text(
                                    'Ghoda',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    'Horse Gang is the Best Gang! ● 5m',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Icon(
                            Icons.camera_alt_outlined,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  )));
            }));
  }
}
