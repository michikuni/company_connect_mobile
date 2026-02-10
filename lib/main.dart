import 'package:flutter/material.dart';
import 'presentation/screens/employee/employee_dashboard.dart';
import 'presentation/screens/manager/manager_dashboard.dart';
import 'presentation/screens/chief/chief_dashboard.dart';
import 'presentation/screens/admin/admin_dashboard.dart';

void main() {
  runApp(const EmployeeApp());
}

class EmployeeApp extends StatelessWidget {
  const EmployeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Employee Management',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const RoleSelectorScreen(),
      routes: {
        EmployeeDashboard.routeName: (_) => const EmployeeDashboard(),
        ManagerDashboard.routeName: (_) => const ManagerDashboard(),
        ChiefDashboard.routeName: (_) => const ChiefDashboard(),
        AdminDashboard.routeName: (_) => const AdminDashboard(),
      },
    );
  }
}

/// Simple role selector screen (replace with real auth later).
class RoleSelectorScreen extends StatelessWidget {
  const RoleSelectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select role'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _RoleButton(
              label: 'Employee',
              onTap: () => Navigator.pushNamed(
                context,
                EmployeeDashboard.routeName,
              ),
            ),
            _RoleButton(
              label: 'Manager',
              onTap: () => Navigator.pushNamed(
                context,
                ManagerDashboard.routeName,
              ),
            ),
            _RoleButton(
              label: 'Chief',
              onTap: () => Navigator.pushNamed(
                context,
                ChiefDashboard.routeName,
              ),
            ),
            _RoleButton(
              label: 'Admin',
              onTap: () => Navigator.pushNamed(
                context,
                AdminDashboard.routeName,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RoleButton extends StatelessWidget {
  const _RoleButton({
    required this.label,
    required this.onTap,
  });

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
            label,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}

