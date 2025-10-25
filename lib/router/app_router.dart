import "package:auto_route/auto_route.dart";
import "package:megiguessr/view/game_widget.dart";
import "package:megiguessr/view/main_widget.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "app_router.gr.dart";
part "app_router.g.dart";

@riverpod
Raw<AppRouter> appRouter(Ref ref) {
  return AppRouter();
}

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: MainRoute.page, initial: true),
    AutoRoute(page: GameRoute.page, path: "/game"),
  ];

  void pushGamePage() {
    push(GameRoute());
  }
}
