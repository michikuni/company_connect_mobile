import 'package:formz/formz.dart';
import 'package:mp_corporation_app/domain/entities/employee/employee.dart';

class EmployeeState {
  final EmployeeEntity? employee;
  final FormzSubmissionStatus status;

  const EmployeeState({
    this.employee,
    this.status = FormzSubmissionStatus.initial,
  });
  EmployeeState copyWith({
    EmployeeEntity? employee,
    FormzSubmissionStatus? status,
  }) {
    return EmployeeState(
      employee: employee ?? this.employee,
      status: status ?? this.status,
    );
  }
}
