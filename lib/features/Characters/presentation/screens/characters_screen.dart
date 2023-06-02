import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/presentation/cubit/characters_cubit.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/presentation/widgets/character_card.dart';
import 'package:harry_potter_characters_app_with_clean_architecture/features/Characters/presentation/widgets/character_shimmer_loading.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});
  static const String routeName = '/characters_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: Text(
          'Characters',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      body: BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
          if (state is CharactersInitial) {
            return const CharacterShimmerLoading();
          }
          if (state is CharactersFailure) {
            return Text(state.error);
          }
          if (state is CharactersLoaded) {
            return GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 10.r),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10.r,
                  mainAxisSpacing: 10.r,
                  crossAxisCount: 2,
                  childAspectRatio: 0.62.r),
              itemCount: state.characters.length,
              itemBuilder: (BuildContext context, int index) {
                return CharacterCard(character: state.characters[index]);
              },
            );
          }
          return const Text('ERROR');
        },
      ),
    );
  }
}
