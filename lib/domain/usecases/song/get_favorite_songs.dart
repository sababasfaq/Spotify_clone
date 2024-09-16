import 'package:dartz/dartz.dart';
import 'package:spotifyfinal/core/usecase/usecase.dart';
import 'package:spotifyfinal/domain/repository/song/song.dart';
import 'package:spotifyfinal/service_locator.dart';


class GetFavoriteSongsUseCase implements UseCase<Either,dynamic> {

  @override
  Future<Either> call({params}) async{
    return await sl<SongsRepository>().getUserFavoriteSongs();
  }
}