import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediverse_mobile/domain/entities/doctor.dart';
import 'package:mediverse_mobile/domain/usecase/get_doctor.dart';

part 'doctor_state.dart';

class DoctorCubit extends Cubit<DoctorState> {
  final GetDoctors getDoctors;
  DoctorCubit({required this.getDoctors}) : super(DoctorInitial()) {
    Future.microtask(() => fetchDoctors());
  }

  void fetchDoctors() async {
    try {
      emit(DoctorLoading());
      final doctors = await getDoctors();
      emit(DoctorLoaded(doctors));
    } catch (e) {
      emit(DoctorError(e.toString()));
    }
  }
}
