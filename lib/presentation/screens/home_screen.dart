import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/presentation/controllers/hello_world_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

@riverpod
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final value = ref.read(helloWorldProvider);
        return Scaffold(
          body: Center(
            child: Text(value),
          ),
        );
      },
    );
  }
}
