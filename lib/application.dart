import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flora_co/lib.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  void initState() {
    context.read<RouteBloc>().add(InitialRoute());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TestProject',
      initialRoute: '/',
      // home: const MainScreen(),
      routes: {
        '/': (context) => const MainScreen(),
        '/firstScreen': (context) => const FirstScreen(),
        '/secondScreen': (context) => const SecondScreen(),
        '/thirdScreen': (context) => const ThirdScreen()
      },
    );
  }
}
