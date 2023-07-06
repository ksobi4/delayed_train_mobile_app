import 'package:delayed_train/core/app_router.dart';
import 'package:delayed_train/core/env/environment.dart';
import 'package:delayed_train/core/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> mainCommon(Environment envEnum) async {
  WidgetsFlutterBinding.ensureInitialized();

  String env = envEnum == Environment.dev ? 'dev' : 'prod';

  await dotenv.load(fileName: 'lib/core/env/.env.$env');

  await locatorSetup();
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );
  }
}
