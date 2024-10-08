import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/providers/chat_provider.dart';
import 'package:yes_no_app/screens/home_screen.dart';

void main() {
  runApp(const YesNoApp());
}

class YesNoApp extends StatelessWidget {
  const YesNoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ChatProvider())],
      child: MaterialApp(
          theme: AppTheme(selectedColor: 6).theme(),
          debugShowCheckedModeBanner: false,
          home: const HomeScreen()),
    );
  }
}
