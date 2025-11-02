import 'package:dotori/feature/auth/data/models/sign_up_request.dart';
import 'package:dotori/feature/auth/data/models/sign_up_response.dart';

abstract class AuthRepository {
  Future<SignUpResponse> signUp(SignUpRequest user);
}