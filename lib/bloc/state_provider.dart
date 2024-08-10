// state_provider.dart
import 'state_bloc.dart';

class StateProvider {
  bool isAnimating = true;

  StateBloc get bloc => stateBloc; // Return the singleton StateBloc instance

  void toggleAnimationValue() => isAnimating = !isAnimating;
}
