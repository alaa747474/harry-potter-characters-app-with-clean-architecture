import 'package:flutter/material.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/domain/entities/character.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/presentation/screens/characters_datails_screen.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/presentation/screens/characters_screen.dart';

class AppRouter {
 static Route? generateRoute(RouteSettings settings){
  switch (settings.name) {
    case CharactersDetailsScreen.routeName:
    final character =settings.arguments as Character;
    return MaterialPageRoute(builder:(_)=>CharactersDetailsScreen(character: character));
     case CharactersScreen.routeName:
    return MaterialPageRoute(builder:(_)=>const CharactersScreen());
  }
  return null;
 }
}