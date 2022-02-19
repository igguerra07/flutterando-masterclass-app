import 'package:masterclass/src/modules/activities/entities/activity_entity.dart';

class ActivityModel extends ActivityEntity {
  const ActivityModel({
    required String type,
    required String title,
    required int exercicies,
    required String description,
  }) : super(
          type: type,
          title: title,
          exercicies: exercicies,
          description: description,
        );
}
