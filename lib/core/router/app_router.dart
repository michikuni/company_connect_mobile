import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mp_corporation_app/core/constants/router_path.dart';
import 'package:mp_corporation_app/core/di/injection.dart';
import 'package:mp_corporation_app/domain/usecases/get_employee.dart';
import 'package:mp_corporation_app/presentation/bloc/employee/employee_bloc.dart';
import 'package:mp_corporation_app/presentation/bloc/employee/employee_event.dart';
import 'package:mp_corporation_app/presentation/screens/admin/admin_dashboard.dart';
import 'package:mp_corporation_app/presentation/screens/chief/chief_dashboard.dart';
import 'package:mp_corporation_app/presentation/screens/identity_verification/identity_verification.dart';
import 'package:mp_corporation_app/presentation/screens/signin/create_new_password/create_new_password.dart';
import 'package:mp_corporation_app/presentation/screens/employee/employee_dashboard.dart';
import 'package:mp_corporation_app/presentation/screens/signin/enter_code_verify/enter_code_verify.dart';
import 'package:mp_corporation_app/presentation/screens/signin/forgot_password/forgot_password.dart';
import 'package:mp_corporation_app/presentation/screens/manager/manager_dashboard.dart';
import 'package:mp_corporation_app/presentation/screens/signin/signin.dart';

class AppRouter {
  static final GoRouter appRouter = GoRouter(
    initialLocation: RouterPath.identityVerifyRouterPath,
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
      GoRoute(
        path: RouterPath.signinRouterPath,
        builder: (context, state) => const SigninScreen(),
      ),
      GoRoute(
        path: RouterPath.forgotPasswordRouterPath,
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: RouterPath.verifyCodeRouterPath,
        builder: (context, state) => const EnterCodeVerifyScreen(),
      ),
      GoRoute(
        path: RouterPath.newPasswordRouterPath,
        builder: (context, state) => const CreateNewPasswordScreen(),
      ),
      GoRoute(
        path: RouterPath.identityVerifyRouterPath,
        builder: (context, state) => const VerficationScreen(),
      ),
    ],
  );
}
