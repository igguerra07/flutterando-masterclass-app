import 'package:flutter/material.dart';
import 'package:masterclass/services/flutterando_service.dart';
import 'package:masterclass/src/modules/activities/entities/activity_entity.dart';
import 'package:masterclass/src/modules/activities/repositories/activities_repository.dart';

class ActivityRepositoryImpl implements ActivitiesRepository {
  late final FlutterandoService _remote;

  ActivityRepositoryImpl({
    required FlutterandoService flutterandoService,
  }) {
    _remote = flutterandoService;
  }

  @override
  Future<List<ActivityEntity>> getActivities() async {
    try {
      final response = await _remote.getActivities();
      return response.data;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }
}
