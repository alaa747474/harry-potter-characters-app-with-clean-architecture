import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/domain/entities/character.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/domain/usecases/get_all_characters.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit(
    this._getAllCharacters,
  ) : super(CharactersInitial());
  final GetAllCharacters _getAllCharacters;
  Future<void> getAllCharacters() async {
    final result = await _getAllCharacters.call();
    result.fold((error) {
      emit(CharactersFailure(error.errorMessage));
    }, (characters) {
      emit(CharactersLoaded(characters));
    });
  }
}
