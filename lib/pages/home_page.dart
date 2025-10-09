import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gmail_clone/pages/soon_page.dart';
import 'package:gmail_clone/pages/user_account.dart';
import 'package:gmail_clone/until/drawer_title.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text('GMail Clone', style: TextStyle(color: Colors.white)),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        actions: [
          IconButton(
            icon: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/165525332?s=1080&u=886b4603dd555cb30f7e992daa19bc1b7ddf58a9&v=4',
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserAccount()),
              );
            },
            tooltip: 'User Account',
          ),
          const SizedBox(width: 10),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              curve: Curves.easeInOut,
              decoration: BoxDecoration(color: Colors.black54),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icon/ic_launcher_adaptive_fore.png',
                      height: 50,
                    ),
                    Text(
                      'GMail Clone',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.all_inbox),
                title: 'All Inbox',
                isMessage: false,
                chipColor: null,
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.inbox),
                title: 'Primary',
                isMessage: false,
                chipColor: null,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.label),
                title: 'Promotions',
                isMessage: true,
                chipColor: Colors.green[200],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.group_outlined),
                title: 'Social',
                isMessage: true,
                chipColor: Colors.blue[200],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.info_outline),
                title: 'Updates',
                isMessage: true,
                chipColor: Colors.orange[200],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'All Labels',
                style: TextStyle(color: Colors.white70, fontSize: 11),
                textAlign: TextAlign.left,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.star),
                title: 'Starred',
                isMessage: false,
                chipColor: null,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.snooze),
                title: 'Snoozed',
                isMessage: false,
                chipColor: null,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.label_important),
                title: 'Important',
                isMessage: false,
                chipColor: null,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.label_important),
                title: 'Important',
                isMessage: false,
                chipColor: null,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.shopping_basket),
                title: 'Purchases',
                isMessage: false,
                chipColor: null,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.send),
                title: 'Sent',
                isMessage: false,
                chipColor: null,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.schedule),
                title: 'Scheduled',
                isMessage: false,
                chipColor: null,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.outbox),
                title: 'Outbox',
                isMessage: false,
                chipColor: null,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.drafts),
                title: 'Drafts',
                isMessage: false,
                chipColor: null,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.all_inbox),
                title: 'All Mail',
                isMessage: false,
                chipColor: null,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.report),
                title: 'Spam',
                isMessage: false,
                chipColor: null,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.delete),
                title: 'Bin',
                isMessage: false,
                chipColor: null,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.manage_accounts),
                title: 'Manage subscriptions',
                isMessage: false,
                chipColor: null,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Google apps',
                style: TextStyle(color: Colors.white70, fontSize: 11),
                textAlign: TextAlign.left,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.calendar_today),
                title: 'Calendar',
                isMessage: false,
                chipColor: null,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.contacts),
                title: 'Contacts',
                isMessage: false,
                chipColor: null,
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SoonPage()),
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.settings),
                title: 'Settings',
                isMessage: false,
                chipColor: null,
              ),
            ),
            GestureDetector(
              onTap: () {
                launchUrl(
                  Uri.parse('https://instagram.com/wkaie'),
                  mode: LaunchMode.externalApplication,
                );
              },
              child: DrawerTitle(
                icon: Icon(Icons.help),
                title: 'Help & feedback',
                isMessage: false,
                chipColor: null,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.email, color: Colors.grey, size: 100),
            Text('No emails yet'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SoonPage()),
          );
        },
        tooltip: 'Compose',
        backgroundColor: Colors.red,
        child: Icon(Icons.edit, color: Colors.white),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[800],
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.mail, color: Colors.white),
              onPressed: () {},
              tooltip: 'Mail',
            ),
            IconButton(
              icon: Icon(Icons.videocam, color: Colors.white),
              onPressed: () {},
              tooltip: 'Meet',
            ),
          ],
        ),
      ),
    );
  }
}
