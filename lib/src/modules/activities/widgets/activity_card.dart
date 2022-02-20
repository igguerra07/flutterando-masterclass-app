import 'package:flutter/material.dart';
import 'package:masterclass/src/modules/activities/entities/activity_entity.dart';
import 'package:masterclass/src/modules/activities/widgets/activity_card_footer.dart';
import 'package:masterclass/src/modules/activities/widgets/activity_card_header.dart';
import 'package:masterclass/theme/colors.dart';

class ActivityCard extends StatelessWidget {
  final ActivityEntity activity;

  const ActivityCard({
    Key? key,
    required this.activity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ThemeColors.card,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 2,
          horizontal: 8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ActivityCardHeader(
              type: activity.type,
              title: activity.title,
              exercicies: activity.exercicies,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                activity.description,
                style: const TextStyle(fontSize: 12),
              ),
            ),
            ActivityCardFooter(
              onClickSeeMoreButton: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
