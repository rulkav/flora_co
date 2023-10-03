import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flora_co/lib.dart';

part 'route_event.dart';
part 'route_state.dart';

class RouteBloc extends Bloc<RouteEvent, RouteState> {
  RouteBloc() : super(RouteInitial()) {
    on<InitialRoute>(_onInitialRoute);
    on<GoToFirstScreen>(_onGoToFirstScreen);
    on<GoToSecondScreen>(_onGoToSecondScreen);
    on<GoToThirdScreen>(_onGoToThirdScreen);
  }

  Future<void> _onInitialRoute(
    InitialRoute event,
    Emitter<RouteState> emit,
  ) async {
    emit(
      RouteScreen(
        selectedScreen: SelectedScreen.firstScreen,
      ),
    );
  }

  Future<void> _onGoToFirstScreen(
    GoToFirstScreen event,
    Emitter<RouteState> emit,
  ) async {
    emit(RouteLoading());

    emit(
      RouteScreen(
        selectedScreen: SelectedScreen.firstScreen,
      ),
    );
  }

  Future<void> _onGoToSecondScreen(
    GoToSecondScreen event,
    Emitter<RouteState> emit,
  ) async {
    emit(RouteLoading());

    emit(
      RouteScreen(
        selectedScreen: SelectedScreen.secondScreen,
      ),
    );
  }

  Future<void> _onGoToThirdScreen(
    GoToThirdScreen event,
    Emitter<RouteState> emit,
  ) async {
    emit(RouteLoading());

    emit(
      RouteScreen(
        selectedScreen: SelectedScreen.thirdScreen,
      ),
    );
  }
}
