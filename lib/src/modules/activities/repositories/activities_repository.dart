import 'package:masterclass/src/modules/activities/entities/activity_entity.dart';
import 'package:masterclass/src/modules/activities/models/activities_response.dart';

abstract class ActivitiesRepository {
  Future<List<ActivityEntity>> getActivities();
}