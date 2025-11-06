// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_posts_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MyPostsViewModel)
const myPostsViewModelProvider = MyPostsViewModelProvider._();

final class MyPostsViewModelProvider
    extends $NotifierProvider<MyPostsViewModel, MyPostsState> {
  const MyPostsViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'myPostsViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$myPostsViewModelHash();

  @$internal
  @override
  MyPostsViewModel create() => MyPostsViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MyPostsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MyPostsState>(value),
    );
  }
}

String _$myPostsViewModelHash() => r'1445f516a33d6c8bb23a8207a671de14323ca3c8';

abstract class _$MyPostsViewModel extends $Notifier<MyPostsState> {
  MyPostsState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MyPostsState, MyPostsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MyPostsState, MyPostsState>,
              MyPostsState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
