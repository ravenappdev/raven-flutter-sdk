# Flutter SDK

Raven Flutter SDK allows you to -

* Manage (Create/Update) your users and their preferences on Raven.
* Update notification statuses to Raven for push notification tracking

## &#x20;Getting started

Before using the Raven SDK you need to integrate the push notification provider like Firebase and handle the rendering of notifications in your Flutter application. The steps below help you setup the SDK with Firebase. If you are using a provider other than Firebase, you can skip to the Usage section. Let's begin by first integrating Firebase in your Flutter app.

### Step 1. Setting up Firebase&#x20;

Please refer to the following docs to create a Firebase project if you don’t have one and integrate your Flutter app to a new/existing Firebase project for the platforms of choice (Android, iOS, Web).

* [https://firebase.flutter.dev/docs/overview](https://firebase.flutter.dev/docs/overview)
* [https://firebase.google.com/docs/flutter/setup](https://firebase.google.com/docs/flutter/setup?platform=android)

### Step 2. Setting up FCM

This step shows how to handle the rendering of notifications in our Flutter app.

First follow the link: [Firebase Cloud Messaging | FlutterFire](https://firebase.flutter.dev/docs/messaging/overview) and complete the necessary steps to add Firebase cloud messaging (FCM) dependency to your project.

If you are targeting iOS devices, follow the steps below to get started with APNS and add code to ask for permission to send notifications -&#x20;

* APNS Integration: [https://firebase.flutter.dev/docs/messaging/apple-integration](https://firebase.flutter.dev/docs/messaging/apple-integration)
* Permission: [https://firebase.flutter.dev/docs/messaging/permissions](https://firebase.flutter.dev/docs/messaging/permissions)

### Step 3. Usage

#### Initialization

1. Add the Raven Flutter SDK dependency in your `pubspec.yaml`. Please check the latest version[ here](https://pub.dev/packages/raven\_flutter\_sdk).

```yaml
dependencies:
   raven_flutter_sdk: <latest_version> 
```

&#x20;2\. Import the SDK and call the `initialize` method

```dart
import 'package:raven_flutter_sdk/raven_flutter_sdk.dart';
```

Since the initialize method is an asynchronous operation, the main function can be modified to ensure initialization is complete before running the application.

```dart
Future<void> main() async {
    await RavenSdk.initialize(appId, apiKey);
}
```

The initialize method takes two parameters: the App ID & API Key which you can get from the Raven Console in the Settings tab.

#### Methods

1. Set user on signup/login. You can use any of the following methods to set user. Note that this will create a user if it does not exists in Raven. If it exists, it will simply update the user if there is any change.

```dart
 await RavenSdk.setUser(userID, userMobile, userEmail);
 await RavenSdk.setUserEmail(userID, userEmail);
 await RavenSdk.setUserMobile(userID, mobile);
```

&#x20;    Note : All of these are asynchronous operations

&#x20;2\. Set the Firebase device token on Raven. Make sure `setUser` is called before setting the device token as Raven would need to associate the token with a user ID.

```dart
 await RavenSdk.setDeviceToken(token);
```

📘 **Note:** \
`setUser` and `setDeviceToken` methods are required only if you want to manage users/preferences/device tokens on Raven. If you are managing the device tokens yourself, then you need not add these methods and can directly pass the device tokens in the Send Event API.&#x20;


&#x20;3\. Updating Notification Status

You can update the notification statuses to Raven which you can use for tracking purposes in the logs and metrics section on Raven console. When you receive a message from Firebase in the `onMessageReceived` callback, you can update Raven with DELIVERED status. If you have set up Notification click and dismiss receivers, please update Raven with CLICKED and DISMISSED statuses respectively. This method takes the Raven notificationId as an argument. Raven generates a unique notification id and attaches it in the data payload.

```dart
String notificationId = message.data["raven_notification_id"];
await RavenSdk.updateStatus(notificationId, Status.DELIVERED);
await RavenSdk.updateStatus(notificationId, Status.CLICKED);
await RavenSdk.updateStatus(notificationId, Status.DISMISSED);
```

&#x20; 4\. When the user logs out of your app, we need to de-register the device token. Call logout to      logout the user from Raven.

```dart
 await RavenSdk.logout();
```

### Step 4. Test

Once you are done with the setup, you can follow the steps below to test -&#x20;

1. Make sure Firebase is able to generate the device token in your app. Next, if you had set the user and device token on Raven, you should start seeing them in the Users tab on the Raven console.
2. [Add Firebase Integration on Raven](../integrations/fcm.md)
3. [Create an event with Push as a channel on the Raven console](../../platform/events/)
4. As a final step, either you can send a test notification directly from Raven console or use the Raven SDK to send a test notification.
   * &#x20;Sending via console - In the Event list, you will see the Event that you created in the previous step. Click the Send Event button. In the recipient details, you can either pass the device token directly or pass `user_id` if you had set the user on Raven. Click on send.
   * Sending via the SDK - The SDK has a method to send notification: `sendMessage(<event_name>, <user_id>)`. You can pass the event name that you created in the previous step and the user id of the user that was set during login/signup.


### Demo

Our Flutter demo app shows this integration in detail. Please check the demo app&#x20;
[Raven Flutter SDK Demo App] (https://github.com/ravenappdev/raven-flutter-demo)


## 🛎️ Useful Links



1. [Firebase Flutter Notifications](https://firebase.flutter.dev/docs/messaging/notifications)
2. [Flutter Official Example Repo](https://github.com/FirebaseExtended/flutterfire/tree/master/packages/firebase\_messaging/firebase\_messaging/example)
