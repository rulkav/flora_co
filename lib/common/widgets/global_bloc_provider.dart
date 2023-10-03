import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flora_co/features/first_screen/bloc/first_screen_bloc.dart';
import 'package:test_flora_co/lib.dart';

class GlobalBlocProvider extends StatelessWidget {
  const GlobalBlocProvider({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => RouteBloc()),
        BlocProvider(create: (context) => FirstScreenBloc()),
        BlocProvider(create: (context) => SecondScreenBloc()),
      ],
      child: child,
    );
  }
}
