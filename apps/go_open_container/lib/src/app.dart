import 'package:flutter/material.dart';

import 'router.dart';

class GoOpenContainerApp extends StatelessWidget {
  const GoOpenContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router);
  }
}
