import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData perfixIcon;
  final bool isPassword;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    required this.label,
    required this.perfixIcon,
    this.isPassword = false, // ให้ค่าเป็น Password = False ก่อน //
    this.keyboardType,
    this.validator,
    this.controller,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: TextFormField(
        // controller: controller,
        // obscureText: isPassword,
        // keyboardType: keyboardType,
        // validator: validator,
      ),
    );
  }
}
