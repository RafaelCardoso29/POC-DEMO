import 'package:poc_demo/core/data/models/character_model.dart';
import 'package:poc_demo/core/data/repositories/rick_repository.dart';
import 'package:poc_demo/features/details/domain/use_cases/details_use_case.dart';

class DetailsUseCaseImpl implements DetailsUseCase {
  final RickRepository _repository;

  const DetailsUseCaseImpl({
    required RickRepository repository,
  }) : _repository = repository;

  @override
  Future<CharacterModel> getCharacter() => _repository.getCharacter();
}
