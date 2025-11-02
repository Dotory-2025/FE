import 'package:dotori/feature/auth/data/models/sign_up_request.dart';
import 'package:dotori/feature/auth/data/models/sign_up_response.dart';
import 'package:dotori/feature/auth/domain/repositories/auth_repository.dart';

class SignUpUseCase {
  final AuthRepository _authRepository;

  SignUpUseCase(this._authRepository);

  Future<SignUpResponse> call(SignUpRequest user) async {
    final SignUpResponse tokens = await _authRepository.signUp(user);
    return tokens;
  }
}