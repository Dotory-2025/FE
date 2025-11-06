import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/setting/data/models/my_posts_response.dart';
import 'package:dotori/feature/setting/di/setting_providers.dart';
import 'package:dotori/feature/setting/domain/usecases/get_my_posts_use_case.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/my_posts_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_posts_view_model.g.dart';

@riverpod
class MyPostsViewModel extends _$MyPostsViewModel {
  @override
  MyPostsState build() {
    return MyPostsState();
  }

  Future<void> getMyPosts() async {
    state = state.copyWith(status: UiStatus.loading);
    try {
      final GetMyPostsUseCase getMyPostsUseCase = ref.read(getMyPostsUseCaseProvider);
      List<MyPostsResponse> myPosts = await getMyPostsUseCase.call();
      state = state.copyWith(status: UiStatus.success, myPosts: myPosts);
    } catch(e) {
      state = state.copyWith(status: UiStatus.error, errorMessage: e.toString());
    }
  }
}