import 'package:dio/dio.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/data/models/character_model.dart';

abstract class BaseCharacterRemoteDataSource {
  Future<List<CharacterModel>> getAllCharacters();
}

class CharacterRemoteDataSource implements BaseCharacterRemoteDataSource {
  final Dio _dio;
  final String url = 'https://hp-api.onrender.com/api/characters';
  CharacterRemoteDataSource(this._dio);
  @override
  Future<List<CharacterModel>> getAllCharacters() async {
    Response response = await _dio.get(url);
    List<dynamic> data = response.data;
  return  data.map((e) => CharacterModel.fromJson(e)).toList();
  }
}
