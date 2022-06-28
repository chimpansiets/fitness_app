import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

part 'onboarding_cubit.freezed.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState.initial());

  void incrementProgress() {
    if (state.progress == 1) {
      emit(
        state.copyWith(
          finished: true,
        ),
      );
    }
    emit(
      state.copyWith(
        progress: state.progress + 0.25,
        page: state.page + 1,
      ),
    );
  }
}
