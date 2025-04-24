import 'package:mediverse_mobile/data/datasource/doctor_remote_datasource.dart';
import 'package:mediverse_mobile/domain/entities/doctor.dart';
import 'package:mediverse_mobile/domain/repositories/doctor_repository.dart';
import 'package:mediverse_mobile/data/models/doctor.dart';

class DoctorRepositoryImpl implements DoctorRepository {
  final DoctorRemoteDataSource remoteDataSource;

  DoctorRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Doctor>> getDoctors() async {
    final List<DoctorModel> models = await remoteDataSource.getDoctors();
    return models.map((e) => Doctor(
      id: e.id,
      name: e.name,
      specialization: e.specialization,
      facilityId: e.facilityId,
      photoUrl: e.photoUrl,
      createdAt: e.createdAt,
      poliId: e.poliId,
      userId: e.userId,
      facilityName: e.facilityName,
    )).toList();
  }
}
