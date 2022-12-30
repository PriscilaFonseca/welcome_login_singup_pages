import 'package:flutter/material.dart';
import 'package:flutter_application_model/constants.dart';
import 'package:flutter_application_model/stores/favorite_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class FavoritesWidget extends StatefulWidget {
  const FavoritesWidget({
    super.key,
  });

  @override
  State<FavoritesWidget> createState() => _FavoritesWidgetState();
}

class _FavoritesWidgetState extends State<FavoritesWidget> {
  @override
  Widget build(BuildContext context) {
    FavoriteStore favoriteStore = FavoriteStore();
    return IconButton(
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: favoriteStore.toggleFavorite,
      icon: Observer(
        builder: (_) {
          return Icon(
            favoriteStore.isFavorite ? Icons.favorite : Icons.favorite_border,
            color: favoriteStore.isFavorite ? pPrimaryColor : null,
            size: 26,
          );
        },
      ),
    );
  }
}
