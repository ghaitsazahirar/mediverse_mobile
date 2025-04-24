import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mediverse_mobile/presentation/pages/cubit/doctor_cubit.dart';
import 'package:mediverse_mobile/presentation/pages/doctor/doctor_list_screen.dart';
import 'package:mediverse_mobile/domain/usecase/get_doctor.dart';
import 'package:mediverse_mobile/di/locator.dart';
import 'package:mediverse_mobile/data/datasource/supabase_init.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  // Setup locator dan inisialisasi Supabase
  await SupabaseInit.initialize();
  await setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DoctorCubit(getDoctors: locator.get<GetDoctors>()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mediverse',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const DoctorListScreen(),
      ),
    );
  }
}
