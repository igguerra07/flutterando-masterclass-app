import 'package:flutter/material.dart';
import 'package:masterclass/src/modules/activities/resources/strings.dart';
import 'package:masterclass/theme/colors.dart';
import 'package:masterclass/theme/icons.dart';

class ActivityCardHeader extends StatelessWidget {
  final String type;
  final String title;
  final int exercicies;

  const ActivityCardHeader({
    Key? key,
    required this.type,
    required this.title,
    required this.exercicies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              color: ThemeColors.primary,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Image.asset(
                ThemeIcons.moon,
                height: 16,
                color: ThemeColors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "${R.excercies}: $exercicies",
            style: const TextStyle(
              fontSize: 12,
              color: ThemeColors.description,
            ),
          ),
        ],
      ),
    );
  }
}
