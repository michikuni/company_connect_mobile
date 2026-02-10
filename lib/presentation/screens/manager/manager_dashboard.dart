import 'package:flutter/material.dart';

class ManagerDashboard extends StatefulWidget {
  const ManagerDashboard({super.key});

  static const routeName = '/manager';

  @override
  State<ManagerDashboard> createState() => _ManagerDashboardState();
}

class _ManagerDashboardState extends State<ManagerDashboard> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manager dashboard'),
      ),
      body: IndexedStack(
        index: _tabIndex,
        children: const [
          _ManagerOverviewTab(),
          _TeamTab(),
          _ReportsTab(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _tabIndex,
        onDestinationSelected: (index) {
          setState(() => _tabIndex = index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.dashboard_outlined),
            label: 'Overview',
          ),
          NavigationDestination(
            icon: Icon(Icons.group_outlined),
            label: 'Team',
          ),
          NavigationDestination(
            icon: Icon(Icons.assignment_outlined),
            label: 'Reports',
          ),
        ],
      ),
    );
  }
}

class _ManagerOverviewTab extends StatelessWidget {
  const _ManagerOverviewTab();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Card(
          child: ListTile(
            title: Text('Today\'s attendance'),
            subtitle: Text('Team present: 7 / 8'),
          ),
        ),
        SizedBox(height: 12),
        Card(
          child: ListTile(
            title: Text('Active reports'),
            subtitle: Text('3 in progress, 1 blocked'),
          ),
        ),
      ],
    );
  }
}

/// Placeholder CRUD list for team members.
class _TeamTab extends StatelessWidget {
  const _TeamTab();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Team members',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              FilledButton.icon(
                onPressed: () {
                  // TODO: open create employee dialog
                },
                icon: const Icon(Icons.add),
                label: const Text('Add'),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const CircleAvatar(child: Icon(Icons.person)),
                title: Text('Employee ${index + 1}'),
                subtitle: const Text('Role: Employee'),
                trailing: PopupMenuButton(
                  itemBuilder: (context) => const [
                    PopupMenuItem(
                      value: 'edit',
                      child: Text('Edit'),
                    ),
                    PopupMenuItem(
                      value: 'delete',
                      child: Text('Remove'),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

/// Placeholder list for work process reports.
class _ReportsTab extends StatelessWidget {
  const _ReportsTab();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Work reports',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              FilledButton.icon(
                onPressed: () {
                  // TODO: open new report form
                },
                icon: const Icon(Icons.add),
                label: const Text('New report'),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: ListTile(
                  title: Text('Report #${index + 1}'),
                  subtitle: const Text('Status: In progress'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    // TODO: open report details
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

