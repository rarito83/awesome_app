import 'package:awesome_app/domain/entities/pexel_data.dart';
import 'package:awesome_app/domain/repository/pexel_repository.dart';
import 'package:awesome_app/domain/usecases/usecase.dart';

abstract class PexelUseCase extends BaseUseCase<GetPexelResult, void> { }

class GetPexelUseCaseImpl extends PexelUseCase {
  final PexelRepository _repository;

  GetPexelUseCaseImpl({
    required PexelRepository pexelRepository,
  }) : _repository = pexelRepository;

  @override
  Future<GetPexelResult> call(void noParams) async {
    try {
      return GetPexelResult(pexels: await _repository.getPexels());
    } on Exception catch (e) {
      return GetPexelResult(pexels: PexelResponse.empty(), exception: e);
    }
  }
}

class GetPexelResult extends UseCaseResult{
  final PexelResponse pexels;
  final Exception? exception;
  GetPexelResult({
    required this.pexels,
    this.exception,
  }) : super(exception: exception);
}