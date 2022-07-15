import 'package:poc_demo/core/data/repositories/rick_repository_impl.dart';
import 'package:poc_demo/features/details/domain/use_cases/details_use_case_impl.dart';
import 'package:poc_demo/features/details/presentation/business_components/details_cubit.dart';

class CubitFactory {
  static DetailsCubit get detailsCubit => DetailsCubit(
        useCase: DetailsUseCaseImpl(
          repository: RickRepositoryImpl(),
        ),
      );
}
