import 'package:flutter/material.dart';
import 'package:tugas_akhir_xi/common/color_extension.dart';
import 'package:tugas_akhir_xi/view/login/sign_up_view.dart';
import 'package:tugas_akhir_xi/view/login/welcome_view.dart';
import 'package:tugas_akhir_xi/view/main_tab/main_tab_view.dart';
import 'package:tugas_akhir_xi/view/subscription_info/subscription_info_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trackizer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Inter",
        colorScheme: ColorScheme.fromSeed(
          seedColor: TColor.primary,
          background: TColor.gray80,
          primary: TColor.primary,
          primaryContainer: TColor.gray60,
          secondary: TColor.secondary,
        ),
        useMaterial3: false,
      ),
      home: MainTabView(),
    );
  }
}