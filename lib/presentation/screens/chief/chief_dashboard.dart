import 'package:flutter/material.dart';

class ChiefDashboard extends StatefulWidget {
  const ChiefDashboard({super.key});

  static const routeName = '/chief';

  @override
  State<ChiefDashboard> createState() => _ChiefDashboardState();
}

class _ChiefDashboardState extends State<ChiefDashboard> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chief dashboard'),
      ),
      body: IndexedStack(
        index: _tabIndex,
        children: const [
          _PeopleTab(),
          _LevelsTab(),
          _NotificationsTab(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _tabIndex,
        onDestinationSelected: (index) {
          setState(() => _tabIndex = index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.people_outline),
            label: 'People',
          ),
          NavigationDestination(
            icon: Icon(Icons.trending_up),
            label: 'Levels',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_outlined),
            label: 'Notify',
          ),
        ],
      ),
    );
  }
}

class _PeopleTab extends StatelessWidget {
  const _PeopleTab();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Managers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.person_add),
              label: const Text('Add manager'),
            ),
          ],
        ),
        const SizedBox(height: 8),
        _personCard('Manager A'),
        _personCard('Manager B'),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Employees',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.person_add_alt_1),
              label: const Text('Add employee'),
            ),
          ],
        ),
        const SizedBox(height: 8),
        _personCard('Employee 1'),
        _personCard('Employee 2'),
      ],
    );
  }

  Widget _personCard(String name) {
    return Card(
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.person)),
        title: Text(name),
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
      ),
    );
  }
}

class _LevelsTab extends StatelessWidget {
  const _LevelsTab();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Promote / demote',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'User ID',
                  ),
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'New level',
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'EMPLOYEE',
                      child: Text('Employee'),
                    ),
                    DropdownMenuItem(
                      value: 'MANAGER',
                      child: Text('Manager'),
                    ),
                  ],
                  onChanged: (_) {},
                ),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: () {
                    // TODO: call API to update level
                  },
                  child: const Text('Apply change'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _NotificationsTab extends StatelessWidget {
  const _NotificationsTab();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Send notification',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'To user ID',
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Title',
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Message',
            ),
            maxLines: 4,
          ),
          const SizedBox(height: 16),
          FilledButton.icon(
            onPressed: () {
              // TODO: call API to send notification
            },
            icon: const Icon(Icons.send),
            label: const Text('Send'),
          ),
          const SizedBox(height: 24),
          const Text(
            'Recent notifications',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.notifications),
                  title: Text('Notification #${index + 1}'),
                  subtitle: const Text('Short description here'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

