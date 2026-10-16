import 'dart:convert';
import 'package:flutter/services.dart';

class DestinationService {

  Future<List<dynamic>> loadDestinations() async {

    final jsonString =
        await rootBundle.loadString(
      'assets/data/destinations.json',
    );

    return jsonDecode(jsonString);
  }
}