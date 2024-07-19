import 'package:learn_riverpod/runner_stub.dart'
    if (dart.library.io) 'package:learn_riverpod/runner_io.dart'
    if (dart.library.web) 'package:learn_riverpod/runner_web.dart' as runner;

void main() => runner.run();
