import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';

final pokemonNameProvider =
    FutureProvider.family<String, int>((ref, pokemonId) async {
  final name = await PokemonService.getPokemonName(pokemonId);
  return name;
});

final pokemonIdProvider = StateProvider<int>((ref) => 1);
