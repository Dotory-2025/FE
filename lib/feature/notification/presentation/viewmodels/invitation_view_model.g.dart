// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(InvitationViewModel)
const invitationViewModelProvider = InvitationViewModelProvider._();

final class InvitationViewModelProvider
    extends $NotifierProvider<InvitationViewModel, InvitationState> {
  const InvitationViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'invitationViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$invitationViewModelHash();

  @$internal
  @override
  InvitationViewModel create() => InvitationViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InvitationState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InvitationState>(value),
    );
  }
}

String _$invitationViewModelHash() =>
    r'abb0888899d3a66148aae660ea1ca607c6540b8e';

abstract class _$InvitationViewModel extends $Notifier<InvitationState> {
  InvitationState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<InvitationState, InvitationState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<InvitationState, InvitationState>,
              InvitationState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
