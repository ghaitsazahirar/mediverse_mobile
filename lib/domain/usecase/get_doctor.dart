import 'package:mediverse_mobile/domain/repositories/doctor_repository.dart';
import 'package:mediverse_mobile/domain/entities/doctor.dart';

class GetDoctors {
  final DoctorRepository doctorRepository;

  GetDoctors({required this.doctorRepository});

  Future<List<Doctor>> call() async {
    return await doctorRepository.getDoctors();
  }
}
