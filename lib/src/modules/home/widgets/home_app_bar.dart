import 'package:flutter/material.dart';
import 'package:masterclass/src/modules/home/resources/string.dart';
import 'package:masterclass/theme/assets.dart';
import 'package:masterclass/theme/icons.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 56,
      child: Row(
        children: [
          SizedBox(
            height: 36,
            child: Image.asset(ThemeImages.logo),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    R.activites,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    R.appName,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: Image.asset(ThemeIcons.moon, height: 24),
          ),
        ],
      ),
    );
  }
}
