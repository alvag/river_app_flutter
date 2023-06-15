import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/provider/providers.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleStyle = Theme.of(context).textTheme.titleMedium;

    final randomName = ref.watch(randomNameProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('State Provider'),
      ),
      body: Center(
        child: Text(randomName, style: titleStyle),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.refresh_rounded),
      ),
    );
  }
}
