import 'package:flutter_test/flutter_test.dart';
import 'package:kadosh_website/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('EventsViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
