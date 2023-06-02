import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/domain/entities/character.dart';

class CharacterModel extends Character {
  const CharacterModel(
      super.id,
      super.name,
      super.alternateNames,
      super.species,
      super.gender,
      super.house,
      super.dateOfBirth,
      super.yearOfBirth,
      super.actor,
      super.alternateActors,
      super.alive,
      super.image);
  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
        json['id'],
        json['name'],
        json['alternate_names'],
        json['species'],
        json['gender'],
        json['house'],
        json['dateOfBirth'],
        json['yearOfBirth'],
        json['actor'],
        json['alternate_actors'],
        json['alive'],
        json['image']);
  }
}
