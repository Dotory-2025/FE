// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RoutineViewModel)
const routineViewModelProvider = RoutineViewModelProvider._();

final class RoutineViewModelProvider
    extends $NotifierProvider<RoutineViewModel, RoutineState> {
  const RoutineViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'routineViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$routineViewModelHash();

  @$internal
  @override
  RoutineViewModel create() => RoutineViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RoutineState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RoutineState>(value),
    );
  }
}

String _$routineViewModelHash() => r'ee052858b1720b51132570cd9da6078bdd865bd1';

abstract class _$RoutineViewModel extends $Notifier<RoutineState> {
  RoutineState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<RoutineState, RoutineState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RoutineState, RoutineState>,
              RoutineState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
