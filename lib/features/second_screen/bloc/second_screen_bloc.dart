import 'package:bloc/bloc.dart';
import 'package:test_flora_co/lib.dart';

part 'second_screen_event.dart';
part 'second_screen_state.dart';

class SecondScreenBloc extends Bloc<SecondScreenEvent, SecondScreenState> {
  SecondScreenBloc() : super(SecondScreenInitial()) {
    on<SelectSecondScreenItem>(_onSelectSecondScreenItem);
  }

  Future<void> _onSelectSecondScreenItem(
    SelectSecondScreenItem event,
    Emitter<SecondScreenState> emit,
  ) async {
    emit(
      SelectedSScreenItem(secondScreenModel: event.secondScreenModel),
    );
  }
}
