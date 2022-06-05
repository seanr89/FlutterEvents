import 'package:flutter/foundation.dart';

/**
 * Baseline event record model queried from the API
 * TODO: more fields are available
 */
class Event {
  final int id;
  final String name;

  Event({
    required this.id,
    required this.name,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json['id'] as int,
      name: json['title'] as String,
    );
  }
}
