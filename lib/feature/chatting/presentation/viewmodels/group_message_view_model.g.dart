// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_message_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GroupMessageViewModel)
const groupMessageViewModelProvider = GroupMessageViewModelProvider._();

final class GroupMessageViewModelProvider
    extends $NotifierProvider<GroupMessageViewModel, GroupMessageState> {
  const GroupMessageViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'groupMessageViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$groupMessageViewModelHash();

  @$internal
  @override
  GroupMessageViewModel create() => GroupMessageViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GroupMessageState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GroupMessageState>(value),
    );
  }
}

String _$groupMessageViewModelHash() =>
    r'02164366fb6d15798e732a0214a2e319ffe893b4';

abstract class _$GroupMessageViewModel extends $Notifier<GroupMessageState> {
  GroupMessageState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<GroupMessageState, GroupMessageState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<GroupMessageState, GroupMessageState>,
              GroupMessageState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
