import 'package:equatable/equatable.dart';

abstract class ApplicationState extends Equatable {
  const ApplicationState();

  @override
  List<Object> get props => [];
}

class ApplicationInitialState extends ApplicationState {
  const ApplicationInitialState();
}

class ApplicationLoadingState extends ApplicationState {
  const ApplicationLoadingState();
}

class ApplicationSuccessState extends ApplicationState {
  const ApplicationSuccessState();
}

class ApplicationErrorState extends ApplicationState {
  final String message;

  const ApplicationErrorState({required this.message});

  @override
  List<Object> get props => [message];
}

class ApplicationNoInternetError extends ApplicationErrorState {
  const ApplicationNoInternetError({required super.message});
}

class ApplicationApiError extends ApplicationErrorState {
  const ApplicationApiError({required super.message});
}

class ApplicationUnauthorizedError extends ApplicationErrorState {
  const ApplicationUnauthorizedError({required super.message});
}
