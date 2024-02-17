import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class NotificationService {
  bool createdNotification = false;  //! save this bool in shared_preferences
  Future<void> awesomeNotificationInitialization() async {
    await AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelKey: 'basic_channel',
          channelName: 'Basic notifications',
          channelDescription: 'Notification channel for basic tests',
          importance: NotificationImportance.High,
          defaultPrivacy: NotificationPrivacy.Public,
          defaultRingtoneType: DefaultRingtoneType.Alarm,
          defaultColor: const Color(0xFF9D50DD),
          ledColor: Colors.white,
          locked: true,
          enableVibration: true,
          playSound: true,
        )
      ],
      debug: true,
    );
  }

  void sendNotification() {
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 1,
        channelKey: 'basic_channel',
        title: 'Notification title',
        body: 'Notification body',
      ),
      schedule: NotificationCalendar(
        minute: 0,
        repeats: true
      ),
    );
  }
}






































// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:flutter_timezone/flutter_timezone.dart';
// import 'package:timezone/data/latest.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;

// class Notifications {
//   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   final AndroidInitializationSettings androidInitializationSettings =
//       const AndroidInitializationSettings('flutter_logo');
//   Future<void> initialiseNotifications() async {
//     InitializationSettings initializationSettings =
//         InitializationSettings(android: androidInitializationSettings);
//     await flutterLocalNotificationsPlugin.initialize(initializationSettings);
//   }

//   Future<void> sendNotification(String title, String body) async {
//     AndroidNotificationDetails androidNotificationDetails =
//         const AndroidNotificationDetails(
//       'channelId',
//       'channelName',
//       importance: Importance.max,
//       priority: Priority.high,
//     );
//     NotificationDetails notificationDetails = NotificationDetails(
//       android: androidNotificationDetails,
//     );
//     await flutterLocalNotificationsPlugin.show(
//       0,
//       title,
//       body,
//       notificationDetails,
//     );
//   }

//   void sendNotificationZonedSchedule(String title, String body) async {
//     const AndroidNotificationDetails androidNotificationDetails =
//         AndroidNotificationDetails(
//       'channelId',
//       'channelName',
//       importance: Importance.max,
//       priority: Priority.high,
//     );
//     NotificationDetails notificationDetails = const NotificationDetails(
//       android: androidNotificationDetails,
//     );
//     tz.initializeTimeZones();
//     final String currentTimeZone = await FlutterTimezone.getLocalTimezone();
//     tz.setLocalLocation(tz.getLocation(currentTimeZone));
//     await flutterLocalNotificationsPlugin.zonedSchedule(
//       0,
//       title,
//       body,
//       tz.TZDateTime.now(tz.local).add(const Duration(seconds: 2)),
//       notificationDetails,
//       uiLocalNotificationDateInterpretation:
//           UILocalNotificationDateInterpretation.absoluteTime,
//     );
//   }
// }
