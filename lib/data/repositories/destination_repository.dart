import '../models/destination_model.dart';
import '../services/destination_service.dart';

class DestinationRepository {//holo

  final DestinationService service;

  DestinationRepository(this.service);

  Future<List<Destination>> getDestinations() async {

    final data =
        await service.loadDestinations();

    return data
        .map<Destination>(
          (json) => Destination.fromJson(json),
        )
        .toList();
  }
}