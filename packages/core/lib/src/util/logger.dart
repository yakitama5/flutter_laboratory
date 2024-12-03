import 'package:logger/logger.dart';

/// ロガー
final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 1,
    errorMethodCount: 5,
  ),
);
