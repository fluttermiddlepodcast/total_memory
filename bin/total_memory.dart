import 'dart:io';
import 'package:total_memory/total_memory.dart' as total_memory;

void main(List<String> arguments) {
  if (arguments.isNotEmpty) {
    final firstArgument = arguments.first;

    if (firstArgument == '--help' || firstArgument == '-h') {
      print('Usage: dart pub global run total_memory');
      print('');
      print('Available arguments:');
      print('--help, -h: Show this help');
      print('--version, -v: Show version');
      print('--contacts, -c: Show contacts');

      exit(0);
    }

    if (firstArgument == '--version' || firstArgument == '-v') {
      print('total_memory 1.0.0');

      exit(0);
    }

    if (firstArgument == '--contacts' || firstArgument == '-c') {
      print('Contacts:');
      print('  - GitHub:              https://github.com/fluttermiddlepodcast');
      print('  - GitHub (repository): https://github.com/fluttermiddlepodcast/total_memory');
      print('  - Email:               fluttermiddlepodcast@gmail.com');

      exit(0);
    }

    print('Unknown argument: $firstArgument');

    exit(1);
  } else {
    try {
      final totalMemory = total_memory.getTotalMemory();

      print(totalMemory);

      exit(0);
    } on UnsupportedError catch (e) {
      print(e.message);

      exit(1);
    }
  }
}
