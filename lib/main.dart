import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/theme/app_theme.dart';
import 'data/repositories/destination_repository.dart';
import 'data/services/destination_service.dart';
import 'presentation/providers/destination_provider.dart';
import 'presentation/screens/splash_screen.dart';

void main() {
  runApp(const guiaturistaApp());
}

class guiaturistaApp extends StatelessWidget {
  const guiaturistaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DestinationProvider(
        DestinationRepository(
          DestinationService(),
        ),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Guía Turística',
        theme: AppTheme.lightTheme,
        home: const SplashScreen(),
      ),
    );
  }
}