import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/core/config/app_router.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/core/config/theme.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/data/datasources/remote/characters_remote_data_source.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/data/repositories/characters_repository.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/domain/usecases/get_all_characters.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/presentation/cubit/characters_cubit.dart';
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
      builder: (context, child) {
        return BlocProvider(
          create: (context) => CharactersCubit(GetAllCharacters(
              CharactersRepository(CharacterRemoteDataSource(Dio()))))..getAllCharacters(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Harry Potter',
            initialRoute: CharactersScreen.routeName,
            onGenerateRoute: AppRouter.generateRoute,
            theme: AppTheme.theme(),
          ),
        );
      },
    );
  }
}
