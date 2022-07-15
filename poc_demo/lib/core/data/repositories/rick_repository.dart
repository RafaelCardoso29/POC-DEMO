import 'package:poc_demo/core/data/models/character_model.dart';

abstract class RickRepository {
  Future<CharacterModel> getCharacter();
}
