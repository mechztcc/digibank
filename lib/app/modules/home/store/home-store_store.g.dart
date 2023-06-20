// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home-store_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStoreStoreBase, Store {
  late final _$nameAtom =
      Atom(name: '_HomeStoreStoreBase.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$accountCodeAtom =
      Atom(name: '_HomeStoreStoreBase.accountCode', context: context);

  @override
  String get accountCode {
    _$accountCodeAtom.reportRead();
    return super.accountCode;
  }

  @override
  set accountCode(String value) {
    _$accountCodeAtom.reportWrite(value, super.accountCode, () {
      super.accountCode = value;
    });
  }

  late final _$balanceAtom =
      Atom(name: '_HomeStoreStoreBase.balance', context: context);

  @override
  int get balance {
    _$balanceAtom.reportRead();
    return super.balance;
  }

  @override
  set balance(int value) {
    _$balanceAtom.reportWrite(value, super.balance, () {
      super.balance = value;
    });
  }

  late final _$getPrefsAsyncAction =
      AsyncAction('_HomeStoreStoreBase.getPrefs', context: context);

  @override
  Future getPrefs() {
    return _$getPrefsAsyncAction.run(() => super.getPrefs());
  }

  @override
  String toString() {
    return '''
name: ${name},
accountCode: ${accountCode},
balance: ${balance}
    ''';
  }
}
