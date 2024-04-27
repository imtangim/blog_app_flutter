import 'package:blog_app/core/error/exception.dart';
import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repo.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryIMPL implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryIMPL(this.remoteDataSource);

  @override
  Future<Either<Failure, String>> signinWithEmailPassword({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signupWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final userID = await remoteDataSource.signupWithEmailPassword(
        name: name,
        email: email,
        password: password,
      );

      return right(userID);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }
}
