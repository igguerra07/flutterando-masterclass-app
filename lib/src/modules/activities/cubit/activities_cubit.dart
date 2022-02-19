import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masterclass/src/modules/activities/entities/activity_entity.dart';
import 'package:masterclass/src/modules/activities/repositories/activities_repository.dart';

class ActivitiesCubit extends Cubit<List<ActivityEntity>> {
  late final ActivitiesRepository _repository;

  ActivitiesCubit({
    required ActivitiesRepository repository,
  }) : super([]) {
    _repository = repository;
  }

  Future<void> getActivities() async {
    final response = await _repository.getActivities();
    emit(response);
  }
}
