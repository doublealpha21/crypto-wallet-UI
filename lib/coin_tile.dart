import 'package:flutter/material.dart';

class CoinTile extends StatelessWidget {
  final Icon requiredIcon;
  final String title;
  final String subtitle;
  final Color? background;
  final VoidCallback? onPressed;

  const CoinTile({
    super.key,
    required this.requiredIcon,
    required this.title,
    required this.subtitle,
    this.background,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListTile(
        tileColor: Colors.white,
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: background,
          ),
          child: requiredIcon,
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(Icons.info_outline_rounded),
        ),
      ),
    );
  }
}
