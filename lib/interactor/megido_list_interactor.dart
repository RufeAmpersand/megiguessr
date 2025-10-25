import "dart:convert";

import "package:flutter/services.dart";
import "package:megidle/entity/megido_list_entity.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "megido_list_interactor.g.dart";

@Riverpod(keepAlive: true)
class MegidoListInteractor extends _$MegidoListInteractor {
  MegidoList? _megidoList;
  @override
  Future<MegidoListInteractor> build() async {
    await rootBundle.loadString("assets/megido_list.json").then((value) {
      _megidoList = MegidoList.fromJson(json.decode(value));
    });
    return this;
  }

  String getDebugText() {
    return _megidoList.toString();
  }
}
