import 'package:dartz/dartz.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/core/errors/failure.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/core/usecases/usecase.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/domain/entities/character.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/domain/repositories/base_characters_repository.dart';

class GetAllCharacters extends UseCase<List<Character>> {
  final BaseCharactersRepository _repository;

  GetAllCharacters(this._repository);
  @override
  Future<Either<Failure, List<Character>>> call() async {
    return await _repository.getAllCharacters();
  }
}
