import 'package:flutter/material.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({super.key});

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('User Account', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black54,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/165525332?s=1080&u=886b4603dd555cb30f7e992daa19bc1b7ddf58a9&v=4',
              ),
            ),
            SizedBox(height: 20),
            Text('wkaie', style: TextStyle(color: Colors.white, fontSize: 35)),
          ],
        ),
      ),
    );
  }
}
