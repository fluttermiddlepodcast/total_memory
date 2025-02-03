import 'dart:io';

int getTotalMemory() {
  if (Platform.isMacOS) {
    final systemInfo = Process.runSync('sysctl', ['-a']);

    final totalMemory = systemInfo.stdout.split('\n').firstWhere((String element) => element.contains('hw.memsize:'));

    return int.parse(totalMemory.substring(totalMemory.indexOf(':') + 2));
  }

  throw UnsupportedError('Not supported on this platform (available on macOS only)');
}
