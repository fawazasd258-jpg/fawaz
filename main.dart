import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/onboarding_screen.dart';
import 'theme/app_colors.dart';

void main() => runApp(const WaseelApp());

class WaseelApp extends StatelessWidget {
  const WaseelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'وصل',
      // دعم RTL الكامل
      locale: const Locale('ar'),
      supportedLocales: const [Locale('ar')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.neonLimeAccent,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: AppColors.bgSageGrey,
        // خط Cairo لكامل التطبيق
        fontFamily: GoogleFonts.cairo().fontFamily,
      ),
      builder: (context, child) => Directionality(
        textDirection: TextDirection.rtl,
        child: child ?? const SizedBox.shrink(),
      ),
      home: const OnboardingScreen(),
    );
  }
}
