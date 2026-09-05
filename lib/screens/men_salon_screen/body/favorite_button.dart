import 'package:avril/screens/men_salon_screen/favorit_provider/favorite_provider.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class FavoriteButton extends StatelessWidget {
  final String providerId;

  const FavoriteButton({super.key, required this.providerId});

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);

    final isFavorite = favoriteProvider.isFavorite(providerId);

    return GestureDetector(
      onTap: () {
        favoriteProvider.toggleFavorite(providerId);
      },

      child: Container(
        padding: const EdgeInsets.all(5),

        decoration: BoxDecoration(
          color: isFavorite ? Colors.black : Colors.white,

          shape: BoxShape.circle,

          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 1),
          ],
        ),

        child: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,

          color: isFavorite ? Colors.white : Colors.black,

          size: 22,
        ),
      ),
    );
  }
}
