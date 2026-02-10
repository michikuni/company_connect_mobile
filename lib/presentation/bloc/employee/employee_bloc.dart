import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:mp_corporation_app/domain/usecases/get_employee.dart';
import 'package:mp_corporation_app/presentation/bloc/employee/employee_event.dart';
import 'package:mp_corporation_app/presentation/bloc/employee/employee_state.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState>{
  final GetEmployeeUseCase getEmployee;
  EmployeeBloc({required this.getEmployee}): super(EmployeeState()){
    on<GetEmployeeEvent>((event, emit) async {
      emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
      final response = await getEmployee();
      response.fold((onLeft){
        emit(state.copyWith(status: FormzSubmissionStatus.failure));
      }, (onRight){
        emit(state.copyWith(employee: onRight));
      });
    },);
  }
}