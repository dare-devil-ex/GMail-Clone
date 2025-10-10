import 'package:flutter/material.dart';

class Vidcam extends StatelessWidget {
  const Vidcam({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.videocam, color: Colors.grey, size: 100),
            Text('No meetings yet'),
          ],
        ),
      ),
    );
  }
}
