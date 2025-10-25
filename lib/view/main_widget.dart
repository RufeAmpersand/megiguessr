import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:gradient_txt/gradient_text.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:megiguessr/app_const.dart";
import "package:megiguessr/presenter/main_presenter.dart";

@RoutePage()
class MainPage extends HookConsumerWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientText(
                  text: "MegiGuessr",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  gradient: megidoGradient,
                ),
                Text("表示される様々な情報からメギドの名前を当てましょう！"),
                ElevatedButton(
                  onPressed: ref
                      .watch(mainPresenterProvider)
                      .pleasePushGamePage,
                  child: Text("始める"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
