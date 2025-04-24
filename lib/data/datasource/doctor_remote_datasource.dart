import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:mediverse_mobile/data/models/doctor.dart';

abstract class DoctorRemoteDataSource {
  Future<List<DoctorModel>> getDoctors();
}

class DoctorRemoteDataSourceImpl implements DoctorRemoteDataSource {
  final SupabaseClient client;

  DoctorRemoteDataSourceImpl(this.client);

  @override
  Future<List<DoctorModel>> getDoctors() async {
    final response = await client
        .from('doctor')
        .select()
        .order('name'); // contoh chaining tambahan

  // Log untuk mengecek data
  print('Response: $response');

    // Pastikan ada data
    final data = response as List<dynamic>;
    if (data.isEmpty) {
      throw Exception('No doctors found');
    }

    // Convert data ke model
    return data
        .map((json) => DoctorModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
