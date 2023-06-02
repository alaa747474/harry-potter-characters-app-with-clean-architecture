import 'package:flutter/material.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/domain/entities/character.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/presentation/widgets/character_information_row.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/presentation/widgets/image_container.dart';

class CharactersDetailsScreen extends StatelessWidget {
  const CharactersDetailsScreen({super.key, required this.character});
  final Character character;
  static const String routeName = '/character_details_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageContainer(image: character.image!),
            CharacterInformationRow(title: 'Name : ', text: character.name),
            CharacterInformationRow(title: 'Actor : ', text: character.actor!),
            CharacterInformationRow(
                title: 'Year of birth : ',
                text: character.yearOfBirth.toString()),
            CharacterInformationRow(
                title: 'Alive : ', text: character.alive.toString())
          ]),
    );
  }
}
