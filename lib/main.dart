import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/core/config/theme.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/presentation/screens/characters_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title:'Harry Potter',
          home: const CharactersScreen(),
          theme: AppTheme.theme(),
        );
      },
    );
  }
}
