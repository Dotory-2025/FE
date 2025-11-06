// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_users_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BlockUsersViewModel)
const blockUsersViewModelProvider = BlockUsersViewModelProvider._();

final class BlockUsersViewModelProvider
    extends $NotifierProvider<BlockUsersViewModel, BlockUsersState> {
  const BlockUsersViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'blockUsersViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$blockUsersViewModelHash();

  @$internal
  @override
  BlockUsersViewModel create() => BlockUsersViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BlockUsersState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BlockUsersState>(value),
    );
  }
}

String _$blockUsersViewModelHash() =>
    r'd14d19ca7c01c68d63dae6dee551f5ef946733a5';

abstract class _$BlockUsersViewModel extends $Notifier<BlockUsersState> {
  BlockUsersState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<BlockUsersState, BlockUsersState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BlockUsersState, BlockUsersState>,
              BlockUsersState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
