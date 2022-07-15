import 'package:poc_demo/core/data/models/character_model.dart';

abstract class DetailsUseCase {
  Future<CharacterModel> getCharacter();
}
