import 'package:equatable/equatable.dart';

class ActivityEntity extends Equatable {
  final String type;
  final String title;
  final int exercicies;
  final String description;

  const ActivityEntity({
    required this.type,
    required this.title,
    required this.exercicies,
    required this.description,
  });

  @override
  List<Object?> get props => [title, type];
}
