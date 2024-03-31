import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    required this.isFavorite,
    required this.onPressed,
    super.key,
  });

  final bool isFavorite;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final icon = isFavorite ? Icons.star : Icons.star_outline;

    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }
}
