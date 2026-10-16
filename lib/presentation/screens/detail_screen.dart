import 'package:flutter/material.dart';
import '../../data/models/destination_model.dart';

class DetailScreen extends StatelessWidget {
  final Destination destination;
  const DetailScreen(
    this.destination,
    {super.key}
  );
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(destination.name),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Image.network(
              destination.image,
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                destination.description,
              ),
            ),
          ],
        ),
      ),
    );
  }
}