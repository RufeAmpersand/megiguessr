import "package:megiguessr/router/app_router.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "main_presenter.g.dart";

@riverpod
class MainPresenter extends _$MainPresenter {
  late final AppRouter router;
  @override
  Raw<MainPresenter> build() {
    final presenter = MainPresenter()..router = ref.watch(appRouterProvider);
    return presenter;
  }

  void pleasePushGamePage() {
    router.pushGamePage();
  }
}
