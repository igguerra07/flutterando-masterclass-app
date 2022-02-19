import 'package:flutter/material.dart';
import 'package:masterclass/src/modules/splash/resources/colors.dart';
import 'package:masterclass/src/modules/splash/resources/strings.dart';
import 'package:masterclass/routes/routes_contstants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..forward();

    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);

    Future.delayed(const Duration(milliseconds: 1500))
        .then((value) => _navToHomePage());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SplashColors.backgroundColor,
      body: FadeTransition(
        opacity: _animation,
        child: Center(
          child: Image.asset(R.logoPath),
        ),
      ),
    );
  }

  void _navToHomePage() => Navigator.of(context).pushReplacementNamed(
        RoutesConstants.home,
      );
}
