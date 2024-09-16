import 'package:dartz/dartz.dart';
import 'package:spotifyfinal/core/usecase/usecase.dart';
import 'package:spotifyfinal/data/models/auth/create_user_req.dart';
import 'package:spotifyfinal/domain/repository/auth/auth.dart';
import 'package:spotifyfinal/service_locator.dart';


class SignupUseCase implements UseCase<Either,CreateUserReq> {


  @override
  Future<Either> call({CreateUserReq ? params}) async {
    return sl<AuthRepository>().signup(params!);
  }

}