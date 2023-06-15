import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/provider/providers.dart';

class PokemonScreen extends ConsumerWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final pokemonId = ref.watch(pokemonIdProvider);
    final pokemonName = ref.watch(pokemonNameProvider(pokemonId));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Pokemon $pokemonId'),
      ),
      body: Center(
        child: pokemonName.when(
          data: (value) => Text(value),
          error: (error, _) => Text('$error'),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'btn1',
            onPressed: () {
              ref.read(pokemonIdProvider.notifier).state++;
            },
            child: const Icon(Icons.plus_one),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'btn2',
            onPressed: () {
              ref.read(pokemonIdProvider.notifier).state--;
            },
            child: const Icon(Icons.exposure_minus_1_outlined),
          )
        ],
      ),
    );
  }
}
