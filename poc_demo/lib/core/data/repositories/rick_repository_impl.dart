import 'package:dio/dio.dart';
import 'package:poc_demo/core/data/models/character_model.dart';
import 'package:poc_demo/core/data/repositories/rick_repository.dart';
import 'package:poc_demo/core/services/dio_client.dart';

class RickRepositoryImpl implements RickRepository {
  final BaseApi _dioClient = BaseApi();

  @override
  Future<CharacterModel> getCharacter() async {
    try {
      var response = await _dioClient.dio
          .get("https://rickandmortyapi.com/api/character/2");
      return CharacterModel.fromJson(response.data);
    } catch (e) {
      print(e);
      throw DioError(error: e);
    }
  }
}
