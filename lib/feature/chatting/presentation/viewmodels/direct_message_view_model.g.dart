// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_message_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DirectMessageViewModel)
const directMessageViewModelProvider = DirectMessageViewModelProvider._();

final class DirectMessageViewModelProvider
    extends $NotifierProvider<DirectMessageViewModel, DirectMessageState> {
  const DirectMessageViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'directMessageViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$directMessageViewModelHash();

  @$internal
  @override
  DirectMessageViewModel create() => DirectMessageViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DirectMessageState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DirectMessageState>(value),
    );
  }
}

String _$directMessageViewModelHash() =>
    r'd3b4c3b233004c985f8d2aba61964b6e8fb7a423';

abstract class _$DirectMessageViewModel extends $Notifier<DirectMessageState> {
  DirectMessageState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<DirectMessageState, DirectMessageState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DirectMessageState, DirectMessageState>,
              DirectMessageState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
