import 'package:dartz/dartz.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/core/errors/failure.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/domain/entities/character.dart';

abstract class BaseCharactersRepository {
  Future<Either<Failure, List<Character>>> getAllCharacters();
}
