import 'package:flutter/material.dart';

class UserTitle extends StatefulWidget {
  const UserTitle({
    super.key,
    required this.icon,
    required this.title,
    required this.index,
  });

  final Icon icon;
  final String title;
  final int index;

  @override
  State<UserTitle> createState() => _UserTitleState();
}

class _UserTitleState extends State<UserTitle> {
  // ignore: avoid_init_to_null
  int? selected = null;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      iconColor: Colors.white,
      textColor: Colors.white,
      selectedColor: Colors.grey[900],

      // For now, I won't route anywhere
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('This feature is coming soon!'),
            duration: Duration(seconds: 1),
          ),
        );
      },
      selected: selected == widget.index ? true : false,
      leading: widget.icon,
      title: Text(widget.title),
    );
  }
}
