import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flora_co/lib.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SelectedScreen screen = SelectedScreen.firstScreen;
    return BlocConsumer<RouteBloc, RouteState>(
      listener: (context, state) {
        if (state is RouteScreen) {
          screen = state.selectedScreen;
        }
        Navigator.pushNamed(context, getRoute(screen));
      },
      builder: (context, state) {
        return const SizedBox.shrink();
      },
    );
  }
}

String getRoute(SelectedScreen screen) {
  return switch (screen) {
    SelectedScreen.firstScreen => '/firstScreen',
    SelectedScreen.secondScreen => '/secondScreen',
    SelectedScreen.thirdScreen => '/thirdScreen'
  };
}
