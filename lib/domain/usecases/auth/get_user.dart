import 'package:dartz/dartz.dart';
import 'package:spotifyfinal/core/usecase/usecase.dart';
import 'package:spotifyfinal/domain/repository/auth/auth.dart';
import 'package:spotifyfinal/service_locator.dart';




class GetUserUseCase implements UseCase<Either,dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<AuthRepository>().getUser();
  }

}