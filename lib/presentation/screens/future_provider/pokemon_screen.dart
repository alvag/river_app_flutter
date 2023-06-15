import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/provider/providers.dart';

class PokemonScreen extends ConsumerWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final pokemonName = ref.watch(pokemonNameProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('FutureProvider'),
      ),
      body: Center(
        child: pokemonName.when(
          data: (value) => Text(value),
          error: (error, _) => Text('Error: $error.toString()'),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
