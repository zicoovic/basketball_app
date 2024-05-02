import 'package:basketball_app1/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;

  int teamBPoints = 0;

  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    }
    if (team == 'B') {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
    if (team == 'R') {
      teamAPoints = buttonNumber;
      teamBPoints = buttonNumber;
      emit(CounterResetState());
    }
  }
}
