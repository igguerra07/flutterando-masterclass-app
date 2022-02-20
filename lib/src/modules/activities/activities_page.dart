import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masterclass/services/flutterando_service.dart';
import 'package:masterclass/services/flutterando_v1.dart';
import 'package:masterclass/src/modules/activities/cubit/activities_cubit.dart';
import 'package:masterclass/src/modules/activities/entities/activity_entity.dart';
import 'package:masterclass/src/modules/activities/repositories/activities_repository.dart';
import 'package:masterclass/src/modules/activities/repositories/activities_repository_impl.dart';
import 'package:masterclass/src/modules/activities/widgets/activity_card.dart';

class ActivityList extends StatefulWidget {
  const ActivityList({Key? key}) : super(key: key);

  @override
  State<ActivityList> createState() => _ActivityListState();
}

class _ActivityListState extends State<ActivityList> {
  late final FlutterandoService service;
  late final ActivitiesRepository repository;
  late final ActivitiesCubit cubit;

  @override
  void initState() {
    service = FlutterandoV1();
    repository = ActivityRepositoryImpl(flutterandoService: service);
    cubit = ActivitiesCubit(repository: repository);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivitiesCubit, List<ActivityEntity>>(
      bloc: cubit..getActivities(),
      builder: (_, activities) => RefreshIndicator(
        onRefresh: () => cubit.getActivities(),
        child: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: activities.length,
          itemBuilder: (_, index) => ActivityCard(activity: activities[index]),
          separatorBuilder: (_, __) => const SizedBox.shrink(),
        ),
      ),
    );
  }
}
