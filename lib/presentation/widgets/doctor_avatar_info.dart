import 'package:flutter/material.dart';
import '../../../domain/entities/doctor.dart';

class DoctorAvatarInfo extends StatelessWidget {
  final Doctor doctor;

  const DoctorAvatarInfo({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: doctor.photoUrl != null
              ? NetworkImage(doctor.photoUrl!)
              : null,
          child: doctor.photoUrl == null
              ? const Icon(Icons.person, size: 30, color: Colors.white)
              : null,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctor.name ?? 'No Name',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                doctor.specialization ?? 'No Specialization',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
