import 'dart:async';

void run() => runZonedGuarded(() {}, (error, stackTrace) {
      throw UnsupportedError('Данная платформа не поддерживается');
    });
