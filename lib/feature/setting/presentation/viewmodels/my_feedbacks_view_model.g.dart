// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_feedbacks_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MyFeedbacksViewModel)
const myFeedbacksViewModelProvider = MyFeedbacksViewModelProvider._();

final class MyFeedbacksViewModelProvider
    extends $NotifierProvider<MyFeedbacksViewModel, MyFeedbacksState> {
  const MyFeedbacksViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'myFeedbacksViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$myFeedbacksViewModelHash();

  @$internal
  @override
  MyFeedbacksViewModel create() => MyFeedbacksViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MyFeedbacksState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MyFeedbacksState>(value),
    );
  }
}

String _$myFeedbacksViewModelHash() =>
    r'894068742876304391821606a0149f675106e942';

abstract class _$MyFeedbacksViewModel extends $Notifier<MyFeedbacksState> {
  MyFeedbacksState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MyFeedbacksState, MyFeedbacksState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MyFeedbacksState, MyFeedbacksState>,
              MyFeedbacksState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
