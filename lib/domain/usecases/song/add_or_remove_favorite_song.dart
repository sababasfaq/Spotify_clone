import 'package:dartz/dartz.dart';
import 'package:spotifyfinal/core/usecase/usecase.dart';
import 'package:spotifyfinal/domain/repository/song/song.dart';
import 'package:spotifyfinal/service_locator.dart';


class AddOrRemoveFavoriteSongUseCase implements UseCase<Either,String> {
  @override
  Future<Either> call({String ? params}) async {
    return await sl<SongsRepository>().addOrRemoveFavoriteSongs(params!);
  }
  
}