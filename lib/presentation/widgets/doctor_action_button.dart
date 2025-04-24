import 'package:flutter/material.dart';

class DoctorActionButtons extends StatelessWidget {
  final VoidCallback onCall;
  final VoidCallback onBook;

  const DoctorActionButtons({
    super.key,
    required this.onCall,
    required this.onBook,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: onCall,
          child: const Text('Call now'),
        ),
        const SizedBox(width: 16),
        TextButton(
          onPressed: onBook,
          child: const Text('Book Appointment'),
        ),
        const Spacer(),
        IconButton(
          onPressed: onBook,
          icon: const Icon(Icons.send_rounded, color: Colors.teal),
        ),
      ],
    );
  }
}
