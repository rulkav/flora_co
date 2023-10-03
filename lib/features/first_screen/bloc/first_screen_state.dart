// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'first_screen_bloc.dart';

abstract class FirstScreenState {}

class FirstScreenInitial extends FirstScreenState {}

class SelectedItem extends FirstScreenState {
  final FirstScreenModel firstScreenModel;

  SelectedItem({
    required this.firstScreenModel,
  });
}

class FirstScreenLoading extends FirstScreenState {}
