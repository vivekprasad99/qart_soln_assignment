import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:qart_soln_assignment/qart/splash/presentation/cubit/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState()){
    Timer(const Duration(seconds:2), () {
      emit(state.copyWith(isTimerCompleted: true));
    });
  }
}
