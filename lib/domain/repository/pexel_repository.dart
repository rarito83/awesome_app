import 'package:awesome_app/domain/entities/pexel_data.dart';

abstract class PexelRepository {
  Future<PexelResponse> getPexels();
}