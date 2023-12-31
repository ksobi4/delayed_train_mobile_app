import 'package:delayed_train/core/dio_client.dart';
import 'package:delayed_train/data/station_repository.dart';
import 'package:get_it/get_it.dart';

final l = GetIt.instance;

Future<void> locatorSetup() async {
  l.registerLazySingleton<HttpClient>(() => HttpClient());

  l.registerLazySingleton<StationRepository>(
      () => StationRepository(client: l()));
}
