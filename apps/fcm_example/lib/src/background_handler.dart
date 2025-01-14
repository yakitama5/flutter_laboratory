import 'package:core/util.dart';
import 'package:fcm_config/fcm_config.dart';
import 'package:fcm_example/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  logger.d('TerminatedまたはBackgroundで通知受信: ${message.notification?.title}');
  final prefs = await SharedPreferences.getInstance();
  final count = prefs.getInt('notificationCount') ?? 0;
  await prefs.setInt('notificationCount', count + 1);
}
