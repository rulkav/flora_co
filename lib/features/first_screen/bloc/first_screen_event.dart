// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'first_screen_bloc.dart';

abstract class FirstScreenEvent {}

class SelectFirstScreenItem extends FirstScreenEvent {
  final FirstScreenModel firstScreenModel;

  SelectFirstScreenItem({
    required this.firstScreenModel,
  });
}
