part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    required int page,
    required double progress,
    bool? finished,
  }) = _OnboardingState;

  factory OnboardingState.initial() => const OnboardingState(
        page: 1,
        progress: 0.25,
        finished: false,
      );
}
