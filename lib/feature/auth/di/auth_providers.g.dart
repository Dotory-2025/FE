// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(authRepositoryFake)
const authRepositoryFakeProvider = AuthRepositoryFakeProvider._();

final class AuthRepositoryFakeProvider
    extends
        $FunctionalProvider<
          AuthRepositoryFake,
          AuthRepositoryFake,
          AuthRepositoryFake
        >
    with $Provider<AuthRepositoryFake> {
  const AuthRepositoryFakeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authRepositoryFakeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authRepositoryFakeHash();

  @$internal
  @override
  $ProviderElement<AuthRepositoryFake> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AuthRepositoryFake create(Ref ref) {
    return authRepositoryFake(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthRepositoryFake value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthRepositoryFake>(value),
    );
  }
}

String _$authRepositoryFakeHash() =>
    r'45f28fe3a9d81f0e3c735601c753ba0e7a251246';

@ProviderFor(signUpUseCase)
const signUpUseCaseProvider = SignUpUseCaseProvider._();

final class SignUpUseCaseProvider
    extends $FunctionalProvider<SignUpUseCase, SignUpUseCase, SignUpUseCase>
    with $Provider<SignUpUseCase> {
  const SignUpUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signUpUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signUpUseCaseHash();

  @$internal
  @override
  $ProviderElement<SignUpUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SignUpUseCase create(Ref ref) {
    return signUpUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignUpUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignUpUseCase>(value),
    );
  }
}

String _$signUpUseCaseHash() => r'd125f6102c5247978deacd7588275c96d8fbf8a8';
