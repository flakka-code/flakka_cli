# test_optimizer

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick that generates a single entrypoint for Dart tests.

_Generated by [mason][1] 🧱_

## Getting Started 🚀

```sh
mason make test_optimizer --package-root ./path/to/package --on-conflict overwrite
```

The above command will generate a `.test_optimizer.dart` in the `test` directory that imports and executes all tests

```dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// Consider adding this file to your .gitignore.

import 'app/view/app_test.dart' as _a;
import 'counter/cubit/counter_cubit_test.dart' as _b;
import 'counter/view/counter_page_test.dart' as _c;

void main() {
  group('app_view_app_test_dart', () { _a.main(); });
  group('counter_cubit_counter_cubit_test_dart', () { _b.main(); });
  group('counter_view_counter_page_test_dart', () { _c.main(); });
}
```

[1]: https://github.com/felangel/mason