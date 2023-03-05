import 'package:final_template/app_imports.dart';
import 'package:final_template/core/apis/fcmToken/send_fcm_token.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseFCMManger {
  static FirebaseFCMManger? _instance;
  static late FirebaseMessaging _messaging;

  FirebaseFCMManger._internal(String? id) {
    _instance = this;
    _instance!.registerNotification(id: id);
  }

  factory FirebaseFCMManger({String? id}) =>
      _instance ?? FirebaseFCMManger._internal(id);

  void registerNotification({
    String? id,
  }) async {
    // Instantiate Firebase Messaging
    _messaging = FirebaseMessaging.instance;

    // This helps to take the user permissions
    NotificationSettings settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      Utils.printLogs('User granted permission');

      FirebaseMessaging.instance.getInitialMessage().then((message) {
        if (message != null) {
          Utils.printLogs(message);
          onInitialMessge(message);
        }
      });

      //forground notification
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        fcmOnForeground(message);
      });

      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        fcmOnBackground(message);
      });
    } else {
      Utils.printLogs('User declined or has not accepted permission');
    }
  }

  void sendFcmToken(String? id) {
    // Check if the token is already generated for this user
    String strToken =
        SharedPreferencesManager.getString(AppStrings.STRING_KEY_FCMTOKEN);

    // If token present, just fire the callbacks for receiving messages
    if (strToken.isEmpty) {
      FirebaseMessaging.instance.getToken().then((strFCMToken) async {
        if (strFCMToken != null && strFCMToken.isNotEmpty) {
          String strToken = await SendFcmTokenDataSource()
              .sendFcmtoken(strFcmToken: strFCMToken, strUserId: id!);
          if (strToken.isNotEmpty) {
            SharedPreferencesManager.setString(
                AppStrings.STRING_KEY_FCMTOKEN, strToken);
          }
        }
      });
    }
  }

  void onInitialMessge(RemoteMessage message) {}

  void fcmOnForeground(RemoteMessage message) {
    Utils.printLogs('Firebase listener called when app is in the foreground');
    LocalNotificationManger.display(message);
  }

  void fcmOnBackground(RemoteMessage message) {
    Utils.printLogs('Firebase listener called from bg to fg');
  }
}
