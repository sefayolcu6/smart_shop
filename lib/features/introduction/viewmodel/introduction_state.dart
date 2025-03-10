abstract class IntroductionState {}

class IntroductionInitial extends IntroductionState {}

class IntroductionLoading extends IntroductionState {}

class IntroductionSuccess extends IntroductionState {
  final String userName;

  IntroductionSuccess(this.userName);
}

class IntroductionError extends IntroductionState {
  final String errorMessage;

  IntroductionError({required this.errorMessage});
}
