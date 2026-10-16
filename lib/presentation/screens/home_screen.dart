import 'package:flutter/material.dart';

import 'destinations_screen.dart';
import 'favorites_screen.dart';
import 'about_screen.dart';
class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tourist Guide"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const DestinationsScreen(),
                  ),
                );
              },
              child: const Text("Destinos"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const FavoritesScreen(),
                  ),
                );
              },
              child: const Text("Favoritos"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const AboutScreen(),
                  ),
                );
              },
              child: const Text("Acerca de"),
            ),
          ],
        ),
      ),
    );
  }
}