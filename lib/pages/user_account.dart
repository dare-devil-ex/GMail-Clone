import 'package:flutter/material.dart';
import 'package:gmail_clone/until/user_title.dart';

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
            Text(
              'wkaie@gmail.com',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Column(
                children: [
                  UserTitle(
                    icon: Icon(Icons.account_circle),
                    title: 'Manage your Google Account',
                    index: 0,
                  ),
                  UserTitle(
                    icon: Icon(Icons.add),
                    title: 'Add another account',
                    index: 1,
                  ),
                  Divider(color: Colors.grey[500]),
                  UserTitle(
                    icon: Icon(Icons.logout),
                    title: 'Sign out',
                    index: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
