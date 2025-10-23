import "package:auto_route/auto_route.dart";
import "package:megidle/view/main_widget.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "app_router.gr.dart";
part "app_router.g.dart";

@riverpod
class AppRouterProvider extends _$AppRouterProvider {
  @override
  Raw<AppRouter> build() {
    return AppRouter();
  }
}

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [AutoRoute(page: TopRoute.page, initial: true)];
}
