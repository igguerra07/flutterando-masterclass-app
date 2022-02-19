import 'package:masterclass/src/modules/activities/entities/activity_entity.dart';

abstract class ActivitiesRepository {
  Future<List<ActivityEntity>> getActivities();
}