// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HeroController on _HeroControllerBase, Store {
  Computed<bool> _$isNullComputed;

  @override
  bool get isNull =>
      (_$isNullComputed ??= Computed<bool>(() => super.isNull)).value;

  final _$heroAtom = Atom(name: '_HeroControllerBase.hero');

  @override
  Hero get hero {
    _$heroAtom.context.enforceReadPolicy(_$heroAtom);
    _$heroAtom.reportObserved();
    return super.hero;
  }

  @override
  set hero(Hero value) {
    _$heroAtom.context.conditionallyRunInAction(() {
      super.hero = value;
      _$heroAtom.reportChanged();
    }, _$heroAtom, name: '${_$heroAtom.name}_set');
  }

  final _$herosAtom = Atom(name: '_HeroControllerBase.heros');

  @override
  ObservableList<Hero> get heros {
    _$herosAtom.context.enforceReadPolicy(_$herosAtom);
    _$herosAtom.reportObserved();
    return super.heros;
  }

  @override
  set heros(ObservableList<Hero> value) {
    _$herosAtom.context.conditionallyRunInAction(() {
      super.heros = value;
      _$herosAtom.reportChanged();
    }, _$herosAtom, name: '${_$herosAtom.name}_set');
  }

  final _$fetchHeroAsyncAction = AsyncAction('fetchHero');

  @override
  Future fetchHero() {
    return _$fetchHeroAsyncAction.run(() => super.fetchHero());
  }

  final _$_HeroControllerBaseActionController =
      ActionController(name: '_HeroControllerBase');

  @override
  dynamic setHero(dynamic index) {
    final _$actionInfo = _$_HeroControllerBaseActionController.startAction();
    try {
      return super.setHero(index);
    } finally {
      _$_HeroControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
