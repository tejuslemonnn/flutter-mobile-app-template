import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mobile_template/core/base/bloc/auth/auth_bloc.dart';
import 'package:flutter_mobile_template/view/home/bloc/home_bloc.dart';

extension BlocExtensions on BuildContext {
  AuthBloc get authBloc => read<AuthBloc>();
  HomeBloc get homeBloc => read<HomeBloc>();
}
