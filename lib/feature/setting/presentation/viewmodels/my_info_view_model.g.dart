// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_info_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MyInfoViewModel)
const myInfoViewModelProvider = MyInfoViewModelProvider._();

final class MyInfoViewModelProvider
    extends $NotifierProvider<MyInfoViewModel, MyInfoState> {
  const MyInfoViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'myInfoViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$myInfoViewModelHash();

  @$internal
  @override
  MyInfoViewModel create() => MyInfoViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MyInfoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MyInfoState>(value),
    );
  }
}

String _$myInfoViewModelHash() => r'0eb197e7774ea7f9dacfe1a068a7c3a8012bdbbd';

abstract class _$MyInfoViewModel extends $Notifier<MyInfoState> {
  MyInfoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MyInfoState, MyInfoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MyInfoState, MyInfoState>,
              MyInfoState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
