import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qart_soln_assignment/core/di/app_injection_container.dart';
import 'core/data/network/local/database/hive_helper.dart';
import 'core/di/app_injection_container.dart' as app_injection_container;
import 'core/data/network/client/rest_client.dart' as rest_client;
import 'core/router/my_global_route_observer.dart';
import 'core/router/router.dart';
import 'core/widget/network_sensitive/cubit/internet_cubit.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  app_injection_container.init();
  rest_client.init("https://ios.qartsolutions.com/api/");
  await HiveHelper.hiveInit();
  runApp(MultiBlocProvider(
      providers: [
        BlocProvider<InternetCubit>(
          create: (_) => InternetCubit(sl<Connectivity>()),
        ),
      ],
      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qart Solution Assignment',
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: sl<MRouter>().onGenerateRoute,
      initialRoute: MRouter.splashRoute,
      navigatorKey: MRouter.globalNavigatorKey,
      navigatorObservers: [MyGlobalRouteObserver()],
    );
  }
}