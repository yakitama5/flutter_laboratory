import 'package:fcm_config/fcm_config.dart';
import 'package:fcm_example/firebase_options.dart';
import 'package:fcm_example/src/background_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fcm_config_provider.g.dart';

@riverpod
class FcmConfigNotifier extends _$FcmConfigNotifier {
  @override
  FCMConfig build() => FCMConfig.instance;

  Future<void> init() async {
    await state.init(
      options: DefaultFirebaseOptions.currentPlatform,
      onBackgroundMessage: firebaseMessagingBackgroundHandler,
      defaultAndroidChannel: const AndroidNotificationChannel(
        'high_importance_channel',
        'Fcm config',
        importance: Importance.high,
      ),
      displayInForeground: (notification) {
        return true;
      },
    );
  }
}
