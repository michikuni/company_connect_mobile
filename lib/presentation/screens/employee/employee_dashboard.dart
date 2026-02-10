import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mp_corporation_app/presentation/bloc/employee/employee_bloc.dart';
import 'package:mp_corporation_app/presentation/bloc/employee/employee_state.dart';

class EmployeeDashboard extends StatelessWidget {
  const EmployeeDashboard({super.key});


  static const routeName = '/employee';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeBloc, EmployeeState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text('Employee dashboard'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _SectionCard(
              title: 'Profile',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _InfoRow(label: 'ID', value: state.employee?.employeeId ?? ''),
                  _InfoRow(label: 'Name', value: state.employee?.profile.name ?? ''),
                  _InfoRow(label: 'Role', value: state.employee?.position ?? ''),
                  _InfoRow(label: 'Department', value: state.employee?.department ?? ''),
                ],
              ),
            ),
            _SectionCard(
              title: 'Contract',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _InfoRow(label: 'Salary (monthly)', value: state.employee?.payroll.income.toString() ?? '0.0'),
                  _InfoRow(label: 'Benefits', value: 'Health, Lunch, Transport'),
                  _InfoRow(label: 'Contract expires', value: '${state.employee?.contract.contractExpire} month'),
                ],
              ),
            ),
            _SectionCard(
              title: 'Attendance (this month)',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  _InfoRow(label: 'Days worked', value: '18'),
                  _InfoRow(label: 'Absent', value: '2'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            child,
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}

