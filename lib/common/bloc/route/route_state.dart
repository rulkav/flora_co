// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'route_bloc.dart';

abstract class RouteState {}

class RouteInitial extends RouteState {}

class RouteScreen extends RouteState {
  final SelectedScreen selectedScreen;

  RouteScreen({
    required this.selectedScreen,
  });
}

class RouteLoading extends RouteState {}
