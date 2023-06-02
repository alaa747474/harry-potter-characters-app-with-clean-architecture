import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/core/errors/failure.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/core/errors/server_failure.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/data/datasources/remote/characters_remote_data_source.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/domain/entities/character.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/domain/repositories/base_characters_repository.dart';

class CharactersRepository implements BaseCharactersRepository {
  final BaseCharacterRemoteDataSource _baseCharacterRemoteDataSource;

  CharactersRepository(this._baseCharacterRemoteDataSource);
  @override
  Future<Either<Failure, List<Character>>> getAllCharacters() async {
    try {
      final result = await _baseCharacterRemoteDataSource.getAllCharacters();
      return right(result);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
