import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:grocery_app/features/home/presentation/screens/home_screen.dart';

class AppRouter {
  Route? onGeneratRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => HomeBloc(),
            child: const HomeScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
