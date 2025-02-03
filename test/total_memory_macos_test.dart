import 'package:total_memory/total_memory.dart';
import 'package:test/test.dart';

void main() {
  test(
    'get total memory on macOS',
    () => expect(
      getTotalMemory() > 0,
      true,
    ),
  );
}
