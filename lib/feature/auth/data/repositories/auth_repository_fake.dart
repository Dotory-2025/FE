import 'package:dotori/core/utils/custom_logger.dart';
import 'package:dotori/feature/auth/data/models/sign_up_request.dart';
import 'package:dotori/feature/auth/data/models/sign_up_response.dart';
import 'package:dotori/feature/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryFake implements AuthRepository {
  @override
  Future<SignUpResponse> signUp(SignUpRequest user) async {
    await Future.delayed(const Duration(seconds: 1));

    logger.d('✅ [FAKE SIGNUP SUCCESS]\n유저 정보:${user.toString()}');

    return SignUpResponse(
      accessToken: 'Fake accessToken',
      refreshToken: 'Fake refreshToken',
    );
  }
}
