part of 'route_bloc.dart';

abstract class RouteEvent {}

class InitialRoute extends RouteEvent {}

class GoToFirstScreen extends RouteEvent {}

class GoToSecondScreen extends RouteEvent {}

class GoToThirdScreen extends RouteEvent {}
