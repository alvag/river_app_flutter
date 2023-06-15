import 'package:flutter_riverpod/flutter_riverpod.dart';

final namesStreamProvider = StreamProvider<List<String>>((ref) async* {
  await Future.delayed(const Duration(seconds: 2));
  yield [];
  await Future.delayed(const Duration(seconds: 2));
  yield ['John', 'Doe'];
  await Future.delayed(const Duration(seconds: 2));
  yield ['John', 'Doe', 'Jane', 'Doe'];
  await Future.delayed(const Duration(seconds: 2));
  yield ['John', 'Doe', 'Jane', 'Doe', 'Foo', 'Bar'];
});
