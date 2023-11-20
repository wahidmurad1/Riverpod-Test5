import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project4/player_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final players = ref.watch(playerNotifierProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            TextField(
              onChanged: (value) {
                // ref.read(playerNotifierProvider.notifier).filterPlayer(value);
              },
              decoration: const InputDecoration(
                labelText: 'Search',
                suffixIcon: Icon(Icons.search),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  // itemCount: players.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          // Text(players[index]['name']),
                          Text('Name'),
                          // Text(players[index]['country']),
                          Text('Country'),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
