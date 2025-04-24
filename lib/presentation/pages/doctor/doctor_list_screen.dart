import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediverse_mobile/presentation/pages/cubit/doctor_cubit.dart';
import 'package:mediverse_mobile/presentation/widgets/doctor_card.dart';

class DoctorListScreen extends StatelessWidget {
  const DoctorListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorCubit, DoctorState>(
      builder: (context, state) {
        Widget body;
        String appBarTitle = 'Doctors';

        if (state is DoctorLoading) {
          body = const Center(child: CircularProgressIndicator());
        } else if (state is DoctorError) {
          body = Center(child: Text('Error: ${state.message}'));
        } else if (state is DoctorLoaded) {
          final doctors = state.doctors;
          appBarTitle = 'Doctors (${doctors.length})';

          body = ListView.builder(
            itemCount: doctors.length,
            itemBuilder: (context, index) {
              final doctor = doctors[index];
              return DoctorCard(
                doctor: doctor,
                onCall: () {
                  // Action saat call
                },
                onBook: () {
                  // Action saat book
                },
              );
            },
          );
        } else {
          body = const SizedBox.shrink();
        }

        return Scaffold(
          appBar: AppBar(
            centerTitle: true, // naroh judul ditengah
            title: Text(appBarTitle),
          ),
          body: body,
        );
      },
    );
  }
}
