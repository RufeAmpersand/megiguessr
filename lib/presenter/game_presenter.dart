import "package:megidle/interactor/megido_list_interactor.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "game_presenter.g.dart";

@riverpod
class GamePresenter extends _$GamePresenter {
  late final MegidoListInteractor megidoListInteractor;
  @override
  Raw<GamePresenter> build() {
    megidoListInteractor = ref.watch(megidoListInteractorProvider.notifier);
    return this;
  }

  String presentDebugList() {
    return megidoListInteractor.getDebugText();
  }
}
