enum OnboardAnimationState {
  initial,
  showedWelcomeMessage,
  showedChoices,
  selectedYes,
  selectedNo,
}

extension OnboardAnimationStateX on OnboardAnimationState {
  OnboardAnimationState next() {
    switch (this) {
      case OnboardAnimationState.initial:
        return OnboardAnimationState.showedWelcomeMessage;
      case OnboardAnimationState.showedWelcomeMessage:
        return OnboardAnimationState.showedChoices;
      case OnboardAnimationState.showedChoices:
      case OnboardAnimationState.selectedYes:
      case OnboardAnimationState.selectedNo:
        return this;
    }
  }
}
