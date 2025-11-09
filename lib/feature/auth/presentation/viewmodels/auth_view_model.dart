import 'dart:typed_data';

import 'package:dotori/feature/auth/data/models/sign_up_request.dart';
import 'package:dotori/feature/auth/di/auth_providers.dart';
import 'package:dotori/feature/auth/domain/usecases/sign_up_use_case.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/routine_view_model.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/states/auth_state.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/states/routine_state.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_view_model.g.dart';

@Riverpod(keepAlive: true)
class AuthViewModel extends _$AuthViewModel {
  @override
  AuthState build() {
    return AuthState();
  }

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setNickname(String? nickname) {
    state = state.copyWith(nickName: nickname);
  }

  void setStudentNumber(int studentNumber) {
    state = state.copyWith(studentNumber: studentNumber);
  }

  void setDormitory(String dormitory) {
    state = state.copyWith(dormitory: dormitory);
  }

  void setGender(String gender) {
    state = state.copyWith(gender: gender);
  }

  void setProfileImage(Uint8List? profileImage) {
    state = state.copyWith(profileImage: profileImage);
  }

  void setCroppedProfileImage(Uint8List? profileImage) {
    state = state.copyWith(croppedProfileImage: profileImage);
  }

  bool isInfoFilled() {
    return [
      state.nickName,
      state.studentNumber,
      state.dormitory,
      state.gender,
    ].every((v) => v != null);
  }

  Future<void> signUp() async {
    final RoutineViewModel routineViewModel = ref.read(routineViewModelProvider.notifier);
    final SignUpUseCase signUpUseCase = ref.read(signUpUseCaseProvider);
    await signUpUseCase.call(
      SignUpRequest(
        email: state.email!,
        nickName: state.nickName!,
        studentNumber: state.studentNumber!,
        dormitory: state.dormitory!,
        gender: state.gender!,
        routines: routineViewModel.getRoutineAsCodes(),
      ),
    );
  }
}
