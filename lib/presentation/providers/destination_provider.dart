import 'package:flutter/material.dart';

import '../../data/models/destination_model.dart';
import '../../data/repositories/destination_repository.dart';

class DestinationProvider extends ChangeNotifier {

  final DestinationRepository repository;

  DestinationProvider(this.repository);

  List<Destination> destinations = [];

  Future<void> loadDestinations() async {

    destinations =
        await repository.getDestinations();

    notifyListeners();
  }
}