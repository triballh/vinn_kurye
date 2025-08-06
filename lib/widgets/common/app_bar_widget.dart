import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? text;

  const AppBarWidget({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(text ?? 'VINN Kurye'));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
