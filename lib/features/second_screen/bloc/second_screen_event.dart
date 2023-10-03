// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'second_screen_bloc.dart';

abstract class SecondScreenEvent {}

class SelectSecondScreenItem extends SecondScreenEvent {
  final SecondScreenModel secondScreenModel;

  SelectSecondScreenItem({
    required this.secondScreenModel,
  });
}
