import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const paddingRight = EdgeInsets.only(right: 20);
    const title = "AKAbin";
    return AppBar(
      actions: [
        Padding(
          padding: paddingRight,
          child: IconButton(
            icon: const Icon(Icons.language),
            onPressed: () {},
          ),
        )
      ],
      title: const Text(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
