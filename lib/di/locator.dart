import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mediverse_mobile/data/datasource/doctor_remote_datasource.dart';
import 'package:mediverse_mobile/data/repositories/doctor_repository_impl.dart';
import 'package:mediverse_mobile/domain/repositories/doctor_repository.dart';
import 'package:mediverse_mobile/domain/usecase/get_doctor.dart';
import 'package:mediverse_mobile/presentation/pages/cubit/doctor_cubit.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  // Load environment variables
  await dotenv.load();

  // Register Supabase client (tanpa memanggil Supabase.initialize() lagi)
  locator.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);

  // Register DataSource
  locator.registerLazySingleton<DoctorRemoteDataSource>(
    () => DoctorRemoteDataSourceImpl(locator.get<SupabaseClient>()),
  );

  // Register Repository
  locator.registerLazySingleton<DoctorRepository>(
    () => DoctorRepositoryImpl(locator.get()),
  );

  // Register UseCase
  locator.registerLazySingleton<GetDoctors>(
    () => GetDoctors(doctorRepository: locator.get()),
  );

  // Register Cubit
  locator.registerFactory<DoctorCubit>(
    () => DoctorCubit(getDoctors: locator.get()),
  );
}
