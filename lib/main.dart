import 'dart:async';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:sizer/sizer.dart';

import 'src/core/base/bloc/app_bloc_observer.dart';
import 'src/core/base/singleton/base_singleton.dart';
import 'src/core/init/dependency_injector.dart';
import 'src/core/init/main_build/main_build.dart';

Future<void> main() async {
  await _init();
  Bloc.observer = AppBlocObserver.instance;
  runZoned(
    () => runApp(
      MultiRepositoryProvider(
        providers: DependencyInjector.instance.repositoryProviders,
        child: MultiBlocProvider(
          providers: DependencyInjector.instance.globalBlocProviders,
          child: const ProviderScope(
            child: MyApp(),
          ),
        ),
      ),
    ),
  );
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting('tr');
  await EasyLocalization.ensureInitialized();
}

class MyApp extends StatelessWidget with BaseSingleton {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('tr');
    return Sizer(
      builder: (context, orientation, deviceType) {
        final botToastBuilder = BotToastInit();
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: constants.appName,
          routerConfig: routes.routes,
          builder: (context, child) => botToastBuilder(
            context,
            MainBuild(child: child),
          ),
          theme: theme.appTheme,
        );
      },
    );
  }
}
