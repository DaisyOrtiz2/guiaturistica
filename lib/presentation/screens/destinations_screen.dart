import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/destination_provider.dart';
import '../widgets/destination_card.dart';

class DestinationsScreen extends StatefulWidget {

  const DestinationsScreen({super.key});

  @override
  State<DestinationsScreen> createState()
      => _DestinationsScreenState();
}

class _DestinationsScreenState
    extends State<DestinationsScreen> {

  @override
  void initState() {
    super.initState();

    Future.microtask(
      () => context
          .read<DestinationProvider>()
          .loadDestinations(),
    );
  }

  @override
  Widget build(BuildContext context) {

    final provider =
        context.watch<DestinationProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Destinos"),
      ),

      body: ListView.builder(
        itemCount: provider.destinations.length,

        itemBuilder: (context, index) {

          return DestinationCard(
            destination:
                provider.destinations[index],
          );
        },
      ),
    );
  }
}