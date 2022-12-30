import 'package:mobx/mobx.dart';
part 'favorite_store.g.dart';

class FavoriteStore = FavoriteStoreBase with _$FavoriteStore;

abstract class FavoriteStoreBase with Store {
  @observable
  bool isFavorite = false;

  @action
  toggleFavorite() => isFavorite = !isFavorite;
}
