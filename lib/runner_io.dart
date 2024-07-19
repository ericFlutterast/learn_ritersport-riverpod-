import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/app.dart';

void run() => runZonedGuarded(() {
      runApp(const ProviderScope(child: MyApp()));
    }, (error, stackTrace) {});
