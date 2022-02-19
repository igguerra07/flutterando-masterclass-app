import 'package:masterclass/src/modules/activities/models/activities_response.dart';

abstract class FlutterandoService {
  Future<ActivitiesResponse> getActivities();
}
