import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:digibank/app/core/components/app-bar_cubit.dart';
 
void main() {

  blocTest<AppBarCubit, int>('emits [1] when increment is added',
    build: () => AppBarCubit(),
    act: (cubit) => cubit.increment(),
    expect: () => [1],
  );
}