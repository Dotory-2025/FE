// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_feedbacks_detail_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MyFeedbacksDetailViewModel)
const myFeedbacksDetailViewModelProvider =
    MyFeedbacksDetailViewModelProvider._();

final class MyFeedbacksDetailViewModelProvider
    extends
        $NotifierProvider<MyFeedbacksDetailViewModel, MyFeedbacksDetailState> {
  const MyFeedbacksDetailViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'myFeedbacksDetailViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$myFeedbacksDetailViewModelHash();

  @$internal
  @override
  MyFeedbacksDetailViewModel create() => MyFeedbacksDetailViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MyFeedbacksDetailState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MyFeedbacksDetailState>(value),
    );
  }
}

String _$myFeedbacksDetailViewModelHash() =>
    r'96fb5da992baf321aa7731b33b95f34591034f86';

abstract class _$MyFeedbacksDetailViewModel
    extends $Notifier<MyFeedbacksDetailState> {
  MyFeedbacksDetailState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<MyFeedbacksDetailState, MyFeedbacksDetailState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MyFeedbacksDetailState, MyFeedbacksDetailState>,
              MyFeedbacksDetailState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
