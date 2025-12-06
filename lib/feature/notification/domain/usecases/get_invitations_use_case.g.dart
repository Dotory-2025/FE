// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_invitations_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getInvitationsUseCase)
const getInvitationsUseCaseProvider = GetInvitationsUseCaseProvider._();

final class GetInvitationsUseCaseProvider
    extends
        $FunctionalProvider<
          GetInvitationsUseCase,
          GetInvitationsUseCase,
          GetInvitationsUseCase
        >
    with $Provider<GetInvitationsUseCase> {
  const GetInvitationsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getInvitationsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getInvitationsUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetInvitationsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetInvitationsUseCase create(Ref ref) {
    return getInvitationsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetInvitationsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetInvitationsUseCase>(value),
    );
  }
}

String _$getInvitationsUseCaseHash() =>
    r'e160bd2bc01986067337260e30fa6512315dc629';
