import "dart:convert";

import "package:flutter/services.dart";
import "package:megiguessr/entity/megido_entity.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "megido_list_interactor.g.dart";

@Riverpod(keepAlive: true)
class MegidoListInteractor extends _$MegidoListInteractor {
  List<Megido>? _megidoList;
  @override
  Future<MegidoListInteractor> build() async {
    await rootBundle.loadString("assets/megido_list.json").then((value) {
      final List<dynamic> list = json.decode(value);
      _megidoList = list.map((data) => Megido.fromJson(data)).toList();
    });
    return this;
  }

  List<Megido>? getMegidoList() {
    switch (state) {
      case AsyncLoading<MegidoListInteractor>():
        return null;
      case AsyncData<MegidoListInteractor>():
        return state.value!._megidoList!;
      case AsyncError<MegidoListInteractor>():
        throw state.error!;
    }
  }

  String getDebugText() {
    return getMegidoList()?.first.toString() ?? "";
  }
}
