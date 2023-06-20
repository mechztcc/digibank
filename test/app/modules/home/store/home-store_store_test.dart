import 'package:flutter_test/flutter_test.dart';
import 'package:digibank/app/modules/home/store/home-store_store.dart';
 
void main() {
  late HomeStoreStore store;

  setUpAll(() {
    store = HomeStoreStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}