import 'package:flutter/material.dart';
import 'package:grocery_app/common/app_router.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      // home: const HomeScreen(),
      onGenerateRoute: appRouter.onGeneratRoute,
    );
  }
}
