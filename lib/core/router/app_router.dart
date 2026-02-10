import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mp_corporation_app/core/constants/router_path.dart';
import 'package:mp_corporation_app/core/di/injection.dart';
import 'package:mp_corporation_app/domain/usecases/get_employee.dart';
import 'package:mp_corporation_app/presentation/bloc/employee/employee_bloc.dart';
import 'package:mp_corporation_app/presentation/bloc/employee/employee_event.dart';
import 'package:mp_corporation_app/presentation/screens/employee/employee_dashboard.dart';

class AppRouter {
  static final GoRouter appRouter = GoRouter(
    initialLocation: RouterPath.homeRouterPath,
    routes: [
      GoRoute(
        path: RouterPath.homeRouterPath,
        builder: (context, state) => BlocProvider(
          create: (_) =>
              EmployeeBloc(getEmployee: getIt<GetEmployeeUseCase>())
                ..add(GetEmployeeEvent()),
          child: const EmployeeDashboard(),
        ),
      ),
    ],
  );
}
