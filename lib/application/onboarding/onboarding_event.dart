part of 'onboarding_cubit.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.incrementPage(int page) = IncrementPage;
}
