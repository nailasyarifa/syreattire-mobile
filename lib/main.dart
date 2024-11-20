import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:syreattire/screens/login.dart'; // TUGAS 9 
import 'package:syreattire/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider( // TUGAS 9 
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'SyreAttire',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xFF9b957f), // Warna utama
            secondary: const Color(0xFF9b957f), // Warna sekunder
          ),
        ),
        home: const LoginPage(),
      ),
    );
  }
}
