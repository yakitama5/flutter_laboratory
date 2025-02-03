enum OnboardAnimationState {
  initial,
  showWelcomeMessage,
  completed,
}

extension OnboardAnimationStateX on OnboardAnimationState {
  OnboardAnimationState next() {
    switch (this) {
      case OnboardAnimationState.initial:
        return OnboardAnimationState.showWelcomeMessage;
      case OnboardAnimationState.showWelcomeMessage:
        return OnboardAnimationState.completed;
      case OnboardAnimationState.completed:
        return OnboardAnimationState.initial;
    }
  }
}
