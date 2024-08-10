// state_bloc.dart
import 'dart:async';

import 'package:cars_app/bloc/state_provider.dart';

class StateBloc {
  // Private constructor for singleton
  StateBloc._privateConstructor();

  // Single instance of StateBloc
  static final StateBloc _instance = StateBloc._privateConstructor();

  factory StateBloc() {
    return _instance;
  }

  final StreamController<bool> _animationController = StreamController<bool>();
  final StateProvider _provider = StateProvider(); // Use StateProvider instance

  Stream<bool> get animationStatus => _animationController.stream;

  void toggleAnimation() {
    _provider.toggleAnimationValue();
    _animationController.sink.add(_provider.isAnimating);
  }

  void dispose() {
    _animationController.close();
  }
}

// Create a single instance of StateBloc
final StateBloc stateBloc = StateBloc();
