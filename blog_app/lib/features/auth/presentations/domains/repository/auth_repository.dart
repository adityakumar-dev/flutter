import 'package:blog_app/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, String>> signUpWithEmailPassword({
     required String name, required String Password,required String Email});
  Future<Either<Failure, String>> signIpWithEmailPassword({
     required String Password,required String Email});
}
