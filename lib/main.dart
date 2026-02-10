import 'package:flutter/material.dart';
import 'package:mp_corporation_app/core/di/injection.dart';
import 'package:mp_corporation_app/core/router/app_router.dart';

void main() {
  configureDependencies();
  runApp(const CompanyConnectApp());
}

class CompanyConnectApp extends StatelessWidget {
  const CompanyConnectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      routerConfig: AppRouter.appRouter,
    );
  }
}