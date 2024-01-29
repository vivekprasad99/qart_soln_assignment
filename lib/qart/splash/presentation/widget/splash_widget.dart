import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qart_soln_assignment/core/router/router.dart';
import 'package:qart_soln_assignment/qart/splash/presentation/cubit/splash_cubit.dart';
import 'package:qart_soln_assignment/qart/splash/presentation/cubit/splash_state.dart';



class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildSplashForMobile();
  }

  Widget buildSplashForMobile() {
    return BlocConsumer<SplashCubit, SplashState>(
      listener: (context, state) {
        if ((state.isTimerCompleted ?? false)) {
          _launchDashboardWidgetOrGenerateToken(context);
        }
      },
      builder: (context, state) {
        return const Scaffold(
          backgroundColor: Colors.deepPurpleAccent,
          body: Center(
            child:
                Text("Qart Solution",style: TextStyle(color: Colors.white,fontSize: 36,fontWeight: FontWeight.bold),),
          ),
        );
      },
    );
  }

  void _launchDashboardWidgetOrGenerateToken(BuildContext context) {
    MRouter.pushNamedAndRemoveUntil(MRouter.homeWidget);
  }
}
