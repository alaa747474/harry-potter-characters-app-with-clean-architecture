import 'package:equatable/equatable.dart';

class Character extends Equatable {
  final String id;
  final String name;
  final List<dynamic> alternateNames;
  final String ?species;
  final String ?gender;
  final String ?house;
  final String ?dateOfBirth;
  final int yearOfBirth;
  final String? actor;
  final List<dynamic> alternateActors;
  final bool alive;
  final String ?image;

  const Character(
      this.id ,
      this.name,
      this.alternateNames,
      this.species,
      this.gender,
      this.house,
      this.dateOfBirth,
      this.yearOfBirth,
      this.actor ,
      this.alternateActors,
      this.alive,
      this.image);
  @override
  List<Object?> get props => [
        id,
        name,
        alternateNames,
        species,
        gender,
        house,
        dateOfBirth,
        yearOfBirth,
        actor,
        alternateActors,
        alive,
        image
      ];
}
