import 'package:bloc/bloc.dart';
import 'package:test_flora_co/lib.dart';

part 'first_screen_event.dart';
part 'first_screen_state.dart';

class FirstScreenBloc extends Bloc<FirstScreenEvent, FirstScreenState> {
  FirstScreenBloc() : super(FirstScreenInitial()) {
    on<SelectFirstScreenItem>(_onSelectFirstScreenItem);
  }

  Future<void> _onSelectFirstScreenItem(
    SelectFirstScreenItem event,
    Emitter<FirstScreenState> emit,
  ) async {
    emit(
      SelectedItem(firstScreenModel: event.firstScreenModel),
    );
  }
}
