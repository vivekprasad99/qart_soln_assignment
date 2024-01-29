
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:qart_soln_assignment/core/di/repository_container/repository_container.dart' as repository_container;
import 'package:qart_soln_assignment/core/router/router.dart';

final sl = GetIt.instance;

void init() {

  /// Repositories
  repository_container.init();

  /// Cubits
  // cubit_container.init();

  /* Services */
  sl.registerLazySingleton<Connectivity>(() => Connectivity());

  /* Navigation */
  sl.registerSingleton<MRouter>(MRouter(), dispose: (router) {
    router.closeStream();
    router.closeLocalStream();
  });
}
