import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/provider/providers.dart';

class StreamScreen extends ConsumerWidget {
  const StreamScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final randomNames$ = ref.watch(namesStreamProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Stream Provider'),
      ),
      body: randomNames$.when(
        data: (data) {
          return Center(child: Text(data));
        },
        error: (error, stackTrace) => Text('Error: $error'),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
