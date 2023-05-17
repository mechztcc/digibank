import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:digibank/app/core/components/navbar_cubit.dart';
 
void main() {

  blocTest<NavbarCubit, int>('emits [1] when increment is added',
    build: () => NavbarCubit(),
    act: (cubit) => cubit.increment(),
    expect: () => [1],
  );
}