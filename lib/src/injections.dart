import 'package:appwrite/appwrite.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void init() {
  /// Cubits

  /// Repositories

  /// External: Appwrite
  locator.registerLazySingleton(() => Account(locator()));
  locator.registerLazySingleton(
    () => Client()
        .setEndpoint(dotenv.env['BASE_URL'] ?? '')
        .setProject(dotenv.env['PROJECT_ID'] ?? ''),
  );
}
