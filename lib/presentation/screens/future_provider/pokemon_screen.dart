import 'package:flutter/material.dart';

class PokemonScreen extends StatelessWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('FutureProvider'),
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
