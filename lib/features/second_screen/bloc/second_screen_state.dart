// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'second_screen_bloc.dart';

abstract class SecondScreenState {}

class SecondScreenInitial extends SecondScreenState {}

class SelectedSScreenItem extends SecondScreenState {
  final SecondScreenModel secondScreenModel;

  SelectedSScreenItem({
    required this.secondScreenModel,
  });
}

class SecondScreenLoading extends SecondScreenState {}
