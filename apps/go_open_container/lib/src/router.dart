import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/detail_screen.dart';
import 'screens/list_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ListScreen(),
      routes: [
        GoRoute(
          path: 'details/:id',
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: DetailScreen(id: state.pathParameters['id']!),
            // 背景のページ遷移アニメーションは控えめにする（Heroを目立たせるため）
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
            // トランジション時間を調整（Container Transformは少しゆっくりめが良い）
            transitionDuration: const Duration(milliseconds: 400),
          ),
        ),
      ],
    ),
  ],
);
