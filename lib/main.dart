import "package:flutter/material.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:megiguessr/router/app_router.dart";
import "package:shadcn_ui/shadcn_ui.dart";

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends HookConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ShadApp.custom(
      themeMode: ThemeMode.dark,
      darkTheme: ShadThemeData(
        brightness: Brightness.dark,
        colorScheme: ShadVioletColorScheme.dark(),
      ),
      appBuilder: (context) {
        return MaterialApp.router(
          theme: Theme.of(context),
          localizationsDelegates: const [GlobalShadLocalizations.delegate],
          builder: (context, child) {
            return ShadAppBuilder(child: child);
          },
          routerConfig: ref.watch(appRouterProvider).config(),
        );
      },
    );
  }
}
