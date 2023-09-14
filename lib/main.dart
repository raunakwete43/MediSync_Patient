import 'package:flutter/material.dart';
import 'package:medisync_patient/appointments.dart';
import 'package:medisync_patient/book.dart';
import 'package:medisync_patient/doctors.dart';
import 'package:medisync_patient/login.dart';
import 'package:medisync_patient/profile.dart';
import 'package:medisync_patient/register.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/register': (context) => const Register(),
        '/searchdoctors': (context) => const MyDoctor(),
        '/book': (context) => const MyBookis(),
        '/profile': (context) => const MyProfile(),
        '/appointments': (context) => const MyAppointment()
      },
    ),
  );
}
