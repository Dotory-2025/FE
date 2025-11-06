// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_user_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditUserViewModel)
const editUserViewModelProvider = EditUserViewModelProvider._();

final class EditUserViewModelProvider
    extends $NotifierProvider<EditUserViewModel, EditUserState> {
  const EditUserViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editUserViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editUserViewModelHash();

  @$internal
  @override
  EditUserViewModel create() => EditUserViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditUserState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditUserState>(value),
    );
  }
}

String _$editUserViewModelHash() => r'62742fcb8826443bf7f6c71a7f8a35f8c13802b9';

abstract class _$EditUserViewModel extends $Notifier<EditUserState> {
  EditUserState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<EditUserState, EditUserState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditUserState, EditUserState>,
              EditUserState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
