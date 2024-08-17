import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/failure/failure.dart';
import '../../data/repository/restaurant_remote_repository.dart';
import '../entity/favorite_entity.dart';
import '../entity/restaurant_entity.dart';
import '../entity/update_restaurant_entity.dart';

final restaurantRepositoryProvider = Provider((ref) {
  return ref.read(restaurantRemoteRepoProvider);

  // return ref.read(restaurantLocalRepoImplProvider);
});

abstract class IRestaurantRepository {
  // get all restaurants
  Future<Either<Failure, List<RestaurantEntity>>> getAllRestaurants();

  // get a restaurant
  Future<Either<Failure, RestaurantEntity>> getARestaurant(String restaurantId);

  // create a restaurant
  Future<Either<Failure, bool>> createARestaurant(
      RestaurantEntity restaurantEntity);

  // update the restaurant

  // add favorite
  Future<Either<Failure, FavoriteEntity>> addFavoriteRestaurant(
      String restaurantId);

  // delete favorite
  Future<Either<Failure, bool>> deleteFavoriteRestaurant(
      String restaurantId, String favoriteId);

  // get all favorites
  Future<Either<Failure, bool>> getAllFavoriteRestaurants();

// update restaurant and user details
  Future<Either<Failure, bool>> updateUserAndRestaurant(
      UpdateRestaurantEntity restaurantEntity);
}
