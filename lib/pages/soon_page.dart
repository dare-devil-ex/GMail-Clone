import 'package:flutter/material.dart';

class SoonPage extends StatelessWidget {
  const SoonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Coming Soon',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: Center(
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.emoji_emotions_outlined, size: 80, color: Colors.grey),
            SizedBox(height: 5),
            Text('This page is coming soon!'),
          ],
        ),
      ),
    );
  }
}
