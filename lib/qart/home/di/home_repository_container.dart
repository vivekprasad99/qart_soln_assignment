import 'package:qart_soln_assignment/core/di/app_injection_container.dart';
import 'package:qart_soln_assignment/qart/home/data/network/repository/home_remote_repository.dart';

void init() {
  /// Repositories
  sl.registerFactory<HomeRemoteRepository>(() => HomeRemoteRepository());
}