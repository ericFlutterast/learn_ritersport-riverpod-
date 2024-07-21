import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/domain/models/item_model.dart';
import 'package:learn_riverpod/presentation/controllers/items_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Main screen',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 27,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Records:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Consumer(
                builder: (context, ref, child) {
                  final AsyncValue<List<ItemModel>> value = ref.watch(fetchItemModelsProvider);

                  return switch (value) {
                    AsyncLoading() => const Center(child: CircularProgressIndicator()),
                    AsyncData(:final value) => RefreshIndicator(
                        onRefresh: () async => ref.watch(fetchItemModelsProvider),
                        child: ListView(
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          children: [
                            const SizedBox(height: 8),
                            for (final (index, item) in value.indexed)
                              Card(
                                margin: const EdgeInsets.symmetric(vertical: 4),
                                color: Colors.grey,
                                clipBehavior: Clip.hardEdge,
                                child: ListTile(
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  leading: const Icon(Icons.add_call),
                                  title: Text('${index + 1}. ${item.title}'),
                                  trailing: const Icon(Icons.menu),
                                  subtitle: Text(item.description),
                                  horizontalTitleGap: 4,
                                  minLeadingWidth: 40,
                                  minTileHeight: 40,
                                  selected: false,
                                  onTap: () {},
                                ),
                              ),
                          ],
                        ),
                      ),
                    _ => throw Exception('Некорректный ответ запроса'),
                  };
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
