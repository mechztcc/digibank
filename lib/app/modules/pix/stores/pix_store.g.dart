// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pix_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PixStore on _PixStoreBase, Store {
  late final _$favoritsAtom =
      Atom(name: '_PixStoreBase.favorits', context: context);

  @override
  List<FavoritsAccounts> get favorits {
    _$favoritsAtom.reportRead();
    return super.favorits;
  }

  @override
  set favorits(List<FavoritsAccounts> value) {
    _$favoritsAtom.reportWrite(value, super.favorits, () {
      super.favorits = value;
    });
  }

  late final _$onFindFavoritsAsyncAction =
      AsyncAction('_PixStoreBase.onFindFavorits', context: context);

  @override
  Future onFindFavorits() {
    return _$onFindFavoritsAsyncAction.run(() => super.onFindFavorits());
  }

  @override
  String toString() {
    return '''
favorits: ${favorits}
    ''';
  }
}
