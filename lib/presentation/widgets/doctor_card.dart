import 'package:flutter/material.dart';
import '../../../domain/entities/doctor.dart';
import 'doctor_avatar_info.dart';
import 'doctor_action_button.dart';

class DoctorCard extends StatelessWidget {
  final Doctor doctor;
  final VoidCallback onCall;
  final VoidCallback onBook;

  const DoctorCard({
    super.key,
    required this.doctor,
    required this.onCall,
    required this.onBook,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DoctorAvatarInfo(doctor: doctor),
            const SizedBox(height: 12),
            DoctorActionButtons(onCall: onCall, onBook: onBook),
          ],
        ),
      ),
    );
  }
}
