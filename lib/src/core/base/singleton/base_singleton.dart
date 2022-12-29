import 'package:flutter/cupertino.dart';

import '../../constants/app/app_constants.dart';
import '../../init/dependency_injector.dart';
import '../../init/network/vexana_manager.dart';
import '../../init/routes/routes.dart';
import '../../init/theme/app_theme.dart';
import '../bloc/app_bloc_observer.dart';
import '../functions/base_functions.dart';

abstract class BaseSingleton {
  AppConstants get constants => AppConstants.instance;
  Routes get routes => Routes.instance;
  DependencyInjector get dependencyInjector => DependencyInjector.instance;
  AppTheme get theme => AppTheme.instance;
  VexanaManager get vexana => VexanaManager.instance;
  BaseFunctions get functions => BaseFunctions.instance;
  WidgetsBinding get widgetsBinding => WidgetsBinding.instance;
  AppBlocObserver get blocObserver => AppBlocObserver.instance;
}
