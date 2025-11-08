// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatting_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChattingViewModel)
const chattingViewModelProvider = ChattingViewModelProvider._();

final class ChattingViewModelProvider
    extends $NotifierProvider<ChattingViewModel, ChattingState> {
  const ChattingViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'chattingViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$chattingViewModelHash();

  @$internal
  @override
  ChattingViewModel create() => ChattingViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChattingState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChattingState>(value),
    );
  }
}

String _$chattingViewModelHash() => r'3e779322f98754091c93159e869576fcb3dbcf5a';

abstract class _$ChattingViewModel extends $Notifier<ChattingState> {
  ChattingState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ChattingState, ChattingState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ChattingState, ChattingState>,
              ChattingState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
