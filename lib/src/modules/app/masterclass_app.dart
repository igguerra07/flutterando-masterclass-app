import 'package:flutter/material.dart';
import 'package:masterclass/src/modules/app/resources/strings.dart';
import 'package:masterclass/src/modules/home/home_page.dart';
import 'package:masterclass/src/modules/splash/splash_page.dart';
import 'package:masterclass/routes/routes_contstants.dart';

class MasterClassApp extends StatefulWidget {
  const MasterClassApp({Key? key}) : super(key: key);

  @override
  State<MasterClassApp> createState() => _MasterClassAppState();
}

class _MasterClassAppState extends State<MasterClassApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: R.appTitle,
      initialRoute: RoutesConstants.initial,
      routes: {
        RoutesConstants.initial : (context) => const SplashPage(),
        RoutesConstants.splash : (context) => const SplashPage(),
        RoutesConstants.home : (context) => const HomePage(),
      },
    );
  }
}
