import 'package:flutter/material.dart';
import 'package:masterclass/src/modules/activities/resources/strings.dart';
import 'package:masterclass/theme/colors.dart';
import 'package:masterclass/theme/icons.dart';

class ActivityCardFooter extends StatelessWidget {
  final VoidCallback onClickSeeMoreButton;

  const ActivityCardFooter({
    Key? key,
    required this.onClickSeeMoreButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(ThemeIcons.github, height: 16),
          const SizedBox(width: 8),
          const Expanded(
            child: Text(
              R.accessSourceCode,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(
            height: 32,
            width: 120,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: ThemeColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              onPressed: onClickSeeMoreButton,
              child: const Text(
                R.seeMore,
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
