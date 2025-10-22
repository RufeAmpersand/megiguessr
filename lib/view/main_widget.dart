import "package:flutter/material.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";

class MainPage extends HookConsumerWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurpleAccent),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "MegiGuessr",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("表示される様々な情報からメギドの名前を当てましょう！"),
              ElevatedButton(onPressed: () {}, child: Text("始める")),
            ],
          ),
        ),
      ),
    );
  }
}
