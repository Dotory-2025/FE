import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/setting/data/models/my_feedbacks_detail_response.dart';
import 'package:dotori/feature/setting/di/setting_providers.dart';
import 'package:dotori/feature/setting/domain/usecases/get_my_feedbacks_detail_use_case.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/my_feedbacks_detail_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_feedbacks_detail_view_model.g.dart';

@riverpod
class MyFeedbacksDetailViewModel extends _$MyFeedbacksDetailViewModel {
  @override
  MyFeedbacksDetailState build() {
    return MyFeedbacksDetailState();
  }

  Future<void> getMyFeedbacksDetail(int id) async {
    state = state.copyWith(status: UiStatus.loading);
    try {
      final GetMyFeedbacksDetailUseCase getMyFeedbacksDetailUseCase = ref.read(
        getMyFeedbacksDetailUseCaseProvider,
      );
      MyFeedbacksDetailResponse myFeedbacksDetail =
          await getMyFeedbacksDetailUseCase.call(id);
      state = state.copyWith(
        status: UiStatus.success,
        myFeedbackDetail: myFeedbacksDetail,
      );
    } catch (e) {
      state = state.copyWith(
        status: UiStatus.error,
        errorMessage: e.toString(),
      );
    }
  }
}
