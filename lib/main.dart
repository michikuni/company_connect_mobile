import 'package:flutter/material.dart';
import 'package:mp_corporation_app/core/di/injection.dart';
import 'package:mp_corporation_app/core/router/app_router.dart';
import 'package:mp_corporation_app/core/theme/app_theme.dart';

void main() {
  configureDependencies();
  runApp(const CompanyConnectApp());
}

class CompanyConnectApp extends StatelessWidget {
  const CompanyConnectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.lightTheme,
      routerConfig: AppRouter.appRouter,
    );
  }
}