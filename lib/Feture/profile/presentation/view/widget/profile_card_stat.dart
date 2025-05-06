import 'package:flutter/material.dart';
import 'package:madsolutionproject/core/utils/styel.dart';

class ProfileCardStat extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const ProfileCardStat({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: const Color(0xFFF1F6FF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Column(
            children: [
              Icon(icon, color: Colors.blue.shade800),
              const SizedBox(height: 8),
              Text(value, style: AppTextStyles.calibri16BoldWhite),
              const SizedBox(height: 4),
              Text(title, style: const TextStyle(color: Colors.black54)),
            ],
          ),
        ),
      ),
    );
  }
}
