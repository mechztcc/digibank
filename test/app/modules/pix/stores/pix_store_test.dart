import 'package:flutter_test/flutter_test.dart';
import 'package:digibank/app/modules/pix/stores/pix_store.dart';
 
void main() {
  late PixStore store;

  setUpAll(() {
    store = PixStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}