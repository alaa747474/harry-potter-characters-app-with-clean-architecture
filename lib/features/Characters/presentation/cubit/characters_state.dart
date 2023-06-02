part of 'characters_cubit.dart';

abstract class CharactersState extends Equatable {
  const CharactersState();

  @override
  List<Object> get props => [];
}

class CharactersInitial extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<Character> characters;

  const CharactersLoaded(this.characters);
  @override
  List<Object> get props => [characters];
}

class CharactersFailure extends CharactersState {
  final String error;
  const CharactersFailure(this.error);
  @override
  List<Object> get props => [error];
}
