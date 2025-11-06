import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/setting/data/models/my_feedbacks_response.dart';
import 'package:dotori/feature/setting/di/setting_providers.dart';
import 'package:dotori/feature/setting/domain/usecases/get_my_feedbacks_use_case.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/my_feedbacks_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_feedbacks_view_model.g.dart';

@riverpod
class MyFeedbacksViewModel extends _$MyFeedbacksViewModel {
  @override
  MyFeedbacksState build() {
    return MyFeedbacksState();
  }

  Future<void> getMyFeedbacks() async {
    state = state.copyWith(status: UiStatus.loading);
    try {
      final GetMyFeedbacksUseCase getMyFeedbacksUseCase = ref.read(
        getMyFeedbacksUseCaseProvider,
      );
      List<MyFeedbacksResponse> myFeedbacks = await getMyFeedbacksUseCase
          .call();
      state = state.copyWith(
        status: UiStatus.success,
        myFeedbacks: myFeedbacks,
      );
    } catch (e) {
      state = state.copyWith(
        status: UiStatus.error,
        errorMessage: e.toString(),
      );
    }
  }
}
