import 'package:dotori/feature/auth/data/repositories/auth_repository_fake.dart';
import 'package:dotori/feature/auth/domain/usecases/sign_up_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_providers.g.dart';

@riverpod
AuthRepositoryFake authRepositoryFake(Ref ref) {
  return AuthRepositoryFake();
}

@riverpod
SignUpUseCase signUpUseCase(Ref ref) {
  final AuthRepositoryFake authRepositoryFake = ref.watch(
    authRepositoryFakeProvider,
  );
  return SignUpUseCase(authRepositoryFake);
}
