import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instaclone/ProfileTabBarPart.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'View Professional Dashboard',
            style: TextStyle(fontSize: 15, color: Colors.blue),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 43,
                      backgroundColor: Colors.pink,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://camo.githubusercontent.com/48b5c67f0baa5b41fc98c96dad8de4771b0fc583d6b3dda417c7f8e01e801028/68747470733a2f2f692e696d6775722e636f6d2f734a7a665a734c2e6a7067'),
                      ),
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '200',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text('Posts')
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '500M',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text('Followers')
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        '300',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text('Following')
                  ],
                )
              ],
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 10, 10, 5),
                  child: Text(
                    'Swayam Shah',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(15, 0, 10, 5),
                    child: Text(
                      'App Developer',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ))
              ],
            ),
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(15, 0, 10, 5),
                    child: Text(
                      'I am the maker of these Horses.',
                      style: TextStyle(fontSize: 18),
                    ))
              ],
            ),
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(15, 0, 10, 5),
                    child: Text(
                      'Random Text - ',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonTheme(
                    minWidth: 350,
                    height: 40,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ))
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ButtonBar(
                children: <Widget>[
                  ButtonTheme(
                      minWidth: 116.66,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'Promotion',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      )),
                  ButtonTheme(
                      minWidth: 116.66,
                      height: 40,
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            'Insights',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ))),
                  ButtonTheme(
                      minWidth: 116.66,
                      height: 40,
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            'Saved',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )))
                ],
              )
            ]),
            Column(children: [
              Container(
                  height: 80,
                  child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(5),
                            child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.pink,
                                child: CircleAvatar(
                                    radius: 27,
                                    backgroundImage: NetworkImage(
                                      'https://thumbor.forbes.com/thumbor/fit-in/1200x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5f664f1ec2191c793cf3bd8d%2F0x0.jpg',
                                    ))));
                      })),
              /* PageView(
              children: <Widget>[ProfileTab()],
            ) */
            ]),
            Column(children: <Widget>[
              Scaffold(
                  body: Stack(children: <Widget>[
                PageView(
                  children: [ProfileTab()],
                )
              ]))
            ])
          ],
        ));
  }
}
