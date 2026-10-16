import 'package:flutter/material.dart';

import '../../data/models/destination_model.dart';
import '../screens/detail_screen.dart';

class DestinationCard extends StatelessWidget {

  final Destination destination;

  const DestinationCard({
    super.key,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      margin: const EdgeInsets.all(10),

      child: ListTile(
        leading: Image.network(
          destination.image,
          width: 60,
          fit: BoxFit.cover,
        ),

        title: Text(destination.name),

        subtitle: Text(
          destination.location,
        ),

        trailing: Text(
          destination.rating.toString(),
        ),

        onTap: () {

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) =>
                  DetailScreen(destination),
            ),
          );
        },
      ),
    );
  }
}