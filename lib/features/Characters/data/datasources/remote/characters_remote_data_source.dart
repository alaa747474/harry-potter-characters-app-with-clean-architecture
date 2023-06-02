import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/data/models/character_model.dart';

abstract class BaseCharacterRemoteDataSource {
  Future<List<CharacterModel>>getAllCharacters();
}

class CharacterRemoteDataSource implements BaseCharacterRemoteDataSource {
  @override
  Future<List<CharacterModel>>getAllCharacters() {
    // TODO: implement getAllCharacters
    throw UnimplementedError();
  }
}
