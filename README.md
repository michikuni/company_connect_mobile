## Employee mobile app (Flutter)

This is the **Flutter mobile app** for the employee management system.

Roles supported in the UI:

- Employee
- Manager
- Chief
- Admin

For now, the app includes **separate dashboards** for each role and a simple in-app role selector (until you wire up real authentication). Each screen is designed to match the requirements:

- Employee: days worked, salary, role, benefits, contract expiry
- Manager: everything Employee has, plus team management placeholders (CRUD), attendance, work reports
- Chief: manage employees and managers, up/down level, send notifications
- Admin: all permissions

### Run (once Flutter is installed)

```bash
cd mobile/employee_app
flutter pub get
flutter run
```

