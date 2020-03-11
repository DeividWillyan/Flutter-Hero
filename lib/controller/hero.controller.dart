import 'dart:math';

import 'package:hero/model/hero.model.dart';
import 'package:hero/repository/hero.repository.dart';
import 'package:mobx/mobx.dart';
part 'hero.controller.g.dart';

class HeroController = _HeroControllerBase with _$HeroController;

abstract class _HeroControllerBase with Store {
  
  @observable
  Hero hero;

  @observable
  ObservableList<Hero> heros;

  @action
  fetchHero() async {
    heros = new ObservableList<Hero>();
    for (var i = 1; i <= 10; i++) {
      Hero _hero = await HeroRepository().getHero(Random().nextInt(731));
      heros.add(_hero);
    }
  }

  @action
  setHero(index) {
    hero = heros[index];
  }

  @computed
  bool get isNull => heros.isEmpty;

}