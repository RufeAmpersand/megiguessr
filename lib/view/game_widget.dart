import "package:auto_route/annotations.dart";
import "package:flutter/material.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:megiguessr/presenter/game_presenter.dart";

@RoutePage()
class GamePage extends HookConsumerWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GamePresenter gamePresenter = ref.watch(gamePresenterProvider);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          alignment: AlignmentGeometry.center,
          child: Wrap(
            children: [
              exampleMegidoCardWidget(gamePresenter),
              difficultySelectWidgets(gamePresenter),
            ],
          ),
        ),
      ),
    );
  }

  Card difficultySelectWidgets(GamePresenter presenter) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Wrap(
          children: [
            Text(
              "難易度設定",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Colors.deepPurpleAccent,
                ),
              ),
              onPressed: () {},
              child: Text(
                "スタート！",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card exampleMegidoCardWidget(GamePresenter presenter) {
    return questionMegidoCardWidget(presenter);
  }

  Card questionMegidoCardWidget(GamePresenter presenter) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(presenter.presentDebugList()),
      ),
    );
  }
}
