import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view/home/bloc/home_bloc.dart';
import '../base/bloc/auth/auth_bloc.dart';

extension BlocExtensions on BuildContext {
  AuthBloc get authBloc => read<AuthBloc>();
  HomeBloc get homeBloc => read<HomeBloc>();
}
