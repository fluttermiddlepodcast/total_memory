# total_memory

A command-line application to get the total memory of the system.

## Usage

Install the package:

```shell
dart pub global activate total_memory
```

Then you can use the command:

```shell
dart pub global run total_memory
```

## Arguments

| Argument           | Description   |
| ------------------ | ------------- |
| `--help`, `-h`     | Show help     |
| `--version`, `-v`  | Show version  |
| `--contacts`, `-c` | Show contacts |

## How to contribute

1. Fork the repository:

```shell
$ git clone https://github.com/fluttermiddlepodcast/total_memory.git
```

2. Create a new branch:

```shell
$ git checkout -b my-new-branch
```

3. Run all checks locally before pushing your changes:

```shell
$ dart analyze
$ dart format -l 120
```

4. Run tests:

Run tests for available platforms:

```shell
$ dart test ./test/total_memory_macos_test.dart
```

Then change the platform and run tests again:

```shell
$ dart test ./test/total_memory_other_test.dart
```

5. Make your changes and commit them:

```shell
$ git add .
$ git commit -m "Your commit message"
```

## Contributors

- [@fluttermiddlepodcast](https://github.com/fluttermiddlepodcast)

## Contacts

- Email: [Flutter Developer Talks](mailto:fluttermiddlepodcast@gmail.com)
