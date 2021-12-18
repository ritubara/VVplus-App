import 'package:flutter/material.dart';

SnackBar snackBar(String message) {
  return SnackBar(
      content: Text(message,style: const TextStyle(color: Colors.white),),
      duration: (const Duration(seconds: 2)),
      backgroundColor: Colors.green.withOpacity(0.5));
}