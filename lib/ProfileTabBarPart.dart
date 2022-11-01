import 'package:flutter/material.dart';
import 'package:instaclone/DM.dart';
import 'package:instaclone/Home.dart';
import 'package:instaclone/IGTVprofilePage.dart';
import 'package:instaclone/Posts.dart';
import 'package:instaclone/Profile.dart';
import 'package:instaclone/TaggedProfile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: ProfileTab(),
    );
  }
}

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.grid_on),
              ),
              Tab(
                icon: Icon(Icons.live_tv_outlined),
              ),
              Tab(
                icon: Icon(Icons.filter_frames_outlined),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[Posts(), IGTV(), Tagged()],
        ),
      ),
    );
  }
}
