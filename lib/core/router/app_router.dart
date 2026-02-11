import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mp_corporation_app/core/constants/router_path.dart';
import 'package:mp_corporation_app/core/di/injection.dart';
import 'package:mp_corporation_app/domain/usecases/get_employee.dart';
import 'package:mp_corporation_app/presentation/bloc/employee/employee_bloc.dart';
import 'package:mp_corporation_app/presentation/bloc/employee/employee_event.dart';
import 'package:mp_corporation_app/presentation/screens/admin/admin_dashboard.dart';
import 'package:mp_corporation_app/presentation/screens/chief/chief_dashboard.dart';
import 'package:mp_corporation_app/presentation/screens/employee/employee_dashboard.dart';
import 'package:mp_corporation_app/presentation/screens/manager/manager_dashboard.dart';
import 'package:mp_corporation_app/presentation/screens/signin/signin.dart';

class AppRouter {
  static final GoRouter appRouter = GoRouter(
    initialLocation: RouterPath.signinRouterPath,
    routes: [
      GoRoute(
        path: RouterPath.employeeRouterPath,
        builder: (context, state) => BlocProvider(
          create: (_) =>
              EmployeeBloc(getEmployee: getIt<GetEmployeeUseCase>())
                ..add(GetEmployeeEvent()),
          child: const EmployeeDashboard(),
        ),
      ),
      GoRoute(
        path: RouterPath.adminRouterPath,
        builder: (context, state) => const AdminDashboard(),
      ),
      GoRoute(
        path: RouterPath.chiefRouterPath,
        builder: (context, state) => const ChiefDashboard(),
      ),
      GoRoute(
        path: RouterPath.managerRouterPath,
        builder: (context, state) => const ManagerDashboard(),
      ),
      GoRoute(path: RouterPath.signinRouterPath, builder: (context, state) => const SigninScreen(),)
    ],
  );
}
