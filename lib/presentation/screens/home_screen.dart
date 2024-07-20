import 'package:flutter/material.dart';

bool isLoading = true;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.download),
      ),
      body: Column(
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
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Content:',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              children: [
                const SizedBox(height: 8),
                for (int i = 0; i < 10; i++)
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    color: Colors.grey,
                    clipBehavior: Clip.hardEdge,
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      leading: const Icon(Icons.add_call),
                      title: Text('item: $i'),
                      trailing: const Icon(Icons.menu),
                      subtitle: const Text('description'),
                      horizontalTitleGap: 4,
                      minLeadingWidth: 40,
                      minTileHeight: 40,
                      selected: false,
                      onTap: () {},
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
