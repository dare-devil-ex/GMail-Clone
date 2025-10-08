import 'package:flutter/material.dart';

class DrawerTitle extends StatelessWidget {
  const DrawerTitle({
    super.key,
    required this.icon,
    required this.title,
    required this.isMessage,
    required this.chipColor,
  });

  final Icon icon;
  final bool isMessage;
  final String title;
  final Color? chipColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconTheme(data: IconThemeData(color: Colors.white), child: icon),
      title: Text(title, style: Theme.of(context).textTheme.bodyLarge),
      trailing:
          isMessage
              ? Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: chipColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '99+',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
              : null,
    );
  }
}
