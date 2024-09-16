

import 'package:spotifyfinal/core/usecase/usecase.dart';
import 'package:spotifyfinal/domain/repository/song/song.dart';
import 'package:spotifyfinal/service_locator.dart';

class IsFavoriteSongUseCase implements UseCase<bool,String> {
  @override
  Future<bool> call({String ? params}) async {
    return await sl<SongsRepository>().isFavoriteSong(params!);
  }

  
}